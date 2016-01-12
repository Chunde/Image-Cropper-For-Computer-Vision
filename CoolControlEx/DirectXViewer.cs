using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using CvAdapter;
using CommonInterface;
using Microsoft.WindowsAPICodePack.DirectX.Direct2D1;
using Microsoft.WindowsAPICodePack.DirectX.DirectWrite;
using Microsoft.WindowsAPICodePack.DirectX.WindowsImagingComponent;
using Microsoft.WindowsAPICodePack.DirectX;
using Brush = Microsoft.WindowsAPICodePack.DirectX.Direct2D1.Brush;
using System.IO;
using System.Threading;
using BasicSupport;
//using PipelinInterface;

namespace CoolControlEx
{
    public delegate void UserContentDrawingMethod(RenderTarget renderTarget);
    public delegate void UserDragNewImageDelegate(Bitmap _image);
    public delegate void BeforeAccpectingFedImageDelegate(ref Bitmap _image);
    public partial class DirectXViewer : UserControl,IImageViewer,IImageViewerModeSwitch,IImageViewrCommon,IFeatureViewer
    {
        
        StrokeStyle TextBoxStroke;
        D2DFactory d2dFactory;
        ImagingFactory wicFactory;
        DWriteFactory dwriteFactory;
        HwndRenderTarget renderTarget;
        ImageAdapter imageAdapter;
        ColorF backgroundColor = new ColorF(Color.Black.ToArgb());
        D2DBitmap targetImage = null;
        Bitmap cacheBitmap = null;
        RectF renderRect;
        ImageRenderMode renderMode = ImageRenderMode.ModeNomal;
        bool mousePressedFlag = false;
        Point originPoint = new Point(0, 0);
        Size offset;
       // CvImageProcessorPipeLine imageProcessorPipeLine;
        Boolean internalMouseModeFlag = true;
        Boolean enableObjectDrag = true;
        UserContentDrawingMethod userContentDrawingDelegate = null;
        UserDragNewImageDelegate userDragNewImageCallBack = null;
        BeforeAccpectingFedImageDelegate beforeAcceptingImageHandle = null;
        RectF resizeHotRect = new RectF();
        Boolean lockResizeHotRectFlag = false;
        public BeforeAccpectingFedImageDelegate BeforeAcceptingImageHandle
        {
            get { return beforeAcceptingImageHandle; }
            set { beforeAcceptingImageHandle = value; }
        }
        public UserDragNewImageDelegate UserDragNewImageCallBack
        {
            get { return userDragNewImageCallBack; }
            set { userDragNewImageCallBack = value; }
        }
 
        public UserContentDrawingMethod UserContentDrawingDelegate
        {
            get { return userContentDrawingDelegate; }
            set { userContentDrawingDelegate = value; }
        }
        public Boolean EnableObjectDrag
        {
            get { return enableObjectDrag; }
            set 
            {
                enableObjectDrag = value; 
                if (value)
                {
                    showUserSelectRectangle = false;
                }
            }
        }
        RectF userSeletectRectangle = new RectF();
        Boolean showUserSelectRectangle = false;

        public Boolean ShowUserSelectRectangle
        {
            get { return showUserSelectRectangle; }
            set 
            {
                showUserSelectRectangle = value;
            if (value)
                enableObjectDrag = false;
            }
        }
        //there will be some hot region where user can change the size of image directly.
        Boolean showImageResizeRectangle = false;

        public Boolean ShowImageResizeRectangle
        {
            get { return showImageResizeRectangle; }
            set { showImageResizeRectangle = value; }
        }

        public Boolean InternalMouseModeFlag
        {
            get { return internalMouseModeFlag; }
            set { internalMouseModeFlag = value; }
        }

        
       unsafe public Bitmap TargetImage
        {
            set 
            {
                
                if (value == null)
                    return;

                //if the 'new' value is exactly the same as the old one, do not update the cacheBitmap
                if (value != cacheBitmap )
                {
                    if (cacheBitmap != null)
                    {
                        cacheBitmap.Dispose();
                        cacheBitmap = null;
                    }
                    cacheBitmap = new Bitmap(value);
                }
                if (imageAdapter.Width != value.Width || imageAdapter.Height != value.Height)
                {
                    imageAdapter.CreateAdapterImage(value.Width, value.Height);
                    CaculateRenderRect();
                }
                //imageAdapter.SetImageData(value);
                imageAdapter.SetImageData(value.GetHbitmap(), true);
                imageAdapter.FlipImage();
                //imageAdapter = imageProcessorPipeLine.Process(imageAdapter);
               // imageAdapter.EdgeDetectDifferential();
                SizeU size = new SizeU((uint)value.Width, (uint)value.Height);
               if (targetImage == null)
                {
                    try
                    {
                        Monitor.Enter(renderTarget);
                        targetImage = renderTarget.CreateBitmap(size, new BitmapProperties(new PixelFormat(Microsoft.WindowsAPICodePack.DirectX.Graphics.Format.B8G8R8A8UNorm, AlphaMode.Premultiplied), renderTarget.Dpi.X, renderTarget.Dpi.Y));
                    }
                    catch (Exception) { }
                    finally
                    {
                        Monitor.Exit(renderTarget);
                    }
                }
                else
                {
                    if(targetImage.Size.Width != size.Width || targetImage.Size.Height != size.Height)
                    {
                        try
                        {
                            Monitor.Enter(renderTarget);
                            targetImage = renderTarget.CreateBitmap(size, new BitmapProperties(new PixelFormat(Microsoft.WindowsAPICodePack.DirectX.Graphics.Format.B8G8R8A8UNorm, AlphaMode.Premultiplied), renderTarget.Dpi.X, renderTarget.Dpi.Y));
                        }
                        catch (Exception) { }
                        finally
                        {
                            Monitor.Exit(renderTarget);
                        }
                    }
                }
                uint left = 0;
                uint top = 0;
                RectU rect = new RectU(left, top, left + (uint)value.Width, top + (uint)value.Height);
               //System.Drawing.Imaging.BitmapData bmData = value.LockBits(new Rectangle(0, 0, value.Width, value.Height), System.Drawing.Imaging.ImageLockMode.ReadOnly, value.PixelFormat);
               targetImage.CopyFromMemory(rect, (IntPtr)imageAdapter.ImageBuffer, (uint)imageAdapter.Width * 4);
              
               //targetImage.CopyFromMemory(rect,bmData.Scan0, (uint)bmData.Stride);
               //value.UnlockBits(bmData);
                RenderScene();
            }
        }
        RenderTargetProperties renderProps = new RenderTargetProperties
        {
            PixelFormat = new PixelFormat(
                Microsoft.WindowsAPICodePack.DirectX.Graphics.Format.B8G8R8A8UNorm,
                AlphaMode.Premultiplied),
            Usage = RenderTargetUsages.None,
            RenderTargetType = RenderTargetType.Software 
        };

        public DirectXViewer()
        {
            InitializeComponent();

            this.SetStyle(ControlStyles.UserPaint, true);
            this.SetStyle(ControlStyles.AllPaintingInWmPaint, true);
            this.BackColor = Color.Black;
            //this.DoubleBuffered = true;
            this.UpdateStyles();
            imageAdapter = new ImageAdapter();
            renderRect = new RectF(0, 0, Width, Height);
           // imageProcessorPipeLine = new ImageProcessPipeLine();
            this.MouseWheel += new System.Windows.Forms.MouseEventHandler(this.DirectXViewer_MouseWheel);
        }

        private void DirectXViewer_Load(object sender, EventArgs e)
        {
            if (DesignMode)
                return;
            LoadDeviceIndependentResource();
        }
        private void LoadDeviceIndependentResource()
        {
            // Create the D2D Factory
            // This really needs to be set to type MultiThreaded if rendering is to be performed by multiple threads,
            // such as if used in a control similar to DirectControl sample control where rendering is done by a dedicated render thread,
            // especially if multiple such controls are used in one application, but also when multiple applications use D2D Factories.
            //
            // In this sample - SingleThreaded type is used because rendering is only done by the main/UI thread and only when required
            // (when the surface gets invalidated) making the risk of synchronization problems - quite low.
            d2dFactory = D2DFactory.CreateFactory(D2DFactoryType.Multithreaded);

            // Create the DWrite Factory
            dwriteFactory = DWriteFactory.CreateFactory();

            // Create the WIC Factory
            wicFactory = ImagingFactory.Create();

            TextBoxStroke = d2dFactory.CreateStrokeStyle(
                new StrokeStyleProperties(
                    CapStyle.Flat, CapStyle.Flat, CapStyle.Round,
                    LineJoin.Miter, 5.0f, DashStyle.Dash, 3f),
                    null);

        }
        #region CreateDeviceResources()
        /// <summary>
        /// This method creates the render target and associated D2D and DWrite resources
        /// </summary>
        void CreateDeviceResources()
        {
            // Only calls if resources have not been initialize before
            if (renderTarget == null)
            {
                // Create the render target
                SizeU size = new SizeU((uint)this.Width, (uint)this.Height);
                HwndRenderTargetProperties hwndProps = new HwndRenderTargetProperties(this.Handle, size, PresentOptions.RetainContents);
                renderTarget = d2dFactory.CreateHwndRenderTarget(renderProps, hwndProps);

                // Create an initial black brush
                //brushes.Add(renderTarget.CreateSolidColorBrush(new ColorF(Color.Black.ToArgb())));
                //currentBrushIndex = 0;
            }
        }
        #endregion
        #region RenderScene()
        private void RenderScene()
        {
            CreateDeviceResources();

            try
            {
                Monitor.Enter(renderTarget);
                if (renderTarget.IsOccluded)
                    return;
                // renderTarget.DrawBitmap(

                renderTarget.BeginDraw();
                renderTarget.Clear(backgroundColor);
                // RoundedRect r = new RoundedRect(new RectF(100, 100, 200, 200), 10f, 5f);
                //RectF r = new RectF(-10,-10,200,100);
                // renderTarget.DrawRoundedRectangle(r, renderTarget.CreateSolidColorBrush(new ColorF(Color.BlueViolet.ToArgb())), 5);
                //CaculateRenderRect();
                int dif = 2;
                if (targetImage != null)
                {
                    RectF rf = new RectF(renderRect.Left - dif, renderRect.Top - dif, renderRect.Right + dif, renderRect.Bottom + dif);
                    //renderTarget.FillRectangle(rf,renderTarget.CreateSolidColorBrush(new ColorF(Color.Gray.ToArgb())));
                    //renderTarget.DrawBitmap(targetImage, 0.5f, BitmapInterpolationMode.Linear, rf);
                    renderTarget.DrawBitmap(targetImage, 1, BitmapInterpolationMode.Linear, renderRect);
                    //renderTarget.DrawRectangle(rf, renderTarget.CreateSolidColorBrush(new ColorF(Color.Gray.ToArgb())), 2);
                }

                if (showUserSelectRectangle && mousePressedFlag && !enableObjectDrag)
                    renderTarget.DrawRectangle(userSeletectRectangle, renderTarget.CreateSolidColorBrush(new ColorF(Color.Blue.ToArgb())), 
                        1,d2dFactory.CreateStrokeStyle(new StrokeStyleProperties(CapStyle.Square,CapStyle.Square,CapStyle.Square,LineJoin.Miter,1,DashStyle.Dash,3)));
                if (showImageResizeRectangle)
                {
                    DrawImageResizeArea(renderTarget);
                }
                if (userContentDrawingDelegate != null)
                    userContentDrawingDelegate(renderTarget);
                //renderTarget.DrawBitmapAtOrigin(targetImage, 1F, BitmapInterpolationMode.Linear,new RectF(0,0,Width,Height));
            }
            catch (Exception)
            {
               // throw ex;
            }//renderTarget.DrawBitmap(targetImage);
            finally
            {
                renderTarget.EndDraw();
                Monitor.Exit(renderTarget);
            }
        }

        private void DrawImageResizeArea(HwndRenderTarget renderTarget)
        {
            switch(renderMode)
            {
                case ImageRenderMode.ModeNomal:
                    {
                        if(targetImage != null)
                        {
                            //Rectangle rect = new Rectangle((int)resizeHotRect.Left, (int)resizeHotRect.Top, (int)resizeHotRect.Width, (int)resizeHotRect.Height);
                            //Point newPoint = this.PointToClient(Cursor.Position);
                            const int delta = 10;
                            resizeHotRect = new RectF(renderRect.Width - delta, renderRect.Height - delta, renderRect.Width + delta, renderRect.Height + delta);
                            renderTarget.DrawRectangle(resizeHotRect, renderTarget.CreateSolidColorBrush(new ColorF(Color.Red.ToArgb())), 1,
                            d2dFactory.CreateStrokeStyle(new StrokeStyleProperties(CapStyle.Square, CapStyle.Square, CapStyle.Square, LineJoin.Miter, 1, DashStyle.Dash, 3)));
                            if (lockResizeHotRectFlag)
                            {
                                renderTarget.FillRoundedRectangle(new RoundedRect(resizeHotRect,3,3), renderTarget.CreateSolidColorBrush(new ColorF(Color.Green.ToArgb())));
                                //renderTarget.DrawText(this.PointToClient(Cursor.Position).ToString(),,
                            }
                        }
                    
                        break;
                    }
            }
        }
       public unsafe static void OverlayToTarget(RenderTarget target, ImageAdapter image)
        {
            SizeU size = new SizeU((uint)image.Width, (uint)image.Height);
            D2DBitmap d2dImage = target.CreateBitmap(size, new BitmapProperties(new PixelFormat(Microsoft.WindowsAPICodePack.DirectX.Graphics.Format.B8G8R8A8UNorm, AlphaMode.Premultiplied), target.Dpi.X, target.Dpi.Y));
                 
                  
            uint left = 0;
            uint top = 0;
            RectU rect = new RectU(left, top, left + (uint)image.Width, top + (uint)image.Height);
            //System.Drawing.Imaging.BitmapData bmData = value.LockBits(new Rectangle(0, 0, value.Width, value.Height), System.Drawing.Imaging.ImageLockMode.ReadOnly, value.PixelFormat);
            d2dImage.CopyFromMemory(rect, (IntPtr)image.ImageBuffer, (uint)image.Width * 4);
            RectF rf = new RectF(0, 0, image.Width, image.Height);
            target.DrawBitmap(d2dImage, 1, BitmapInterpolationMode.Linear,rf );
            d2dImage.Dispose();
        }
        public void UpdateView()
        {
            RenderScene();
        }
        #endregion
      
       


       
        
        private void DirectXViewer_Resize(object sender, EventArgs e)
        {
            if (DesignMode) return;
            if (renderTarget != null)
            {
                // Resize the render targrt to the actual host size
                
                SizeU size = new SizeU((uint)this.Width, (uint)this.Height);
                try
                {
                    Monitor.Enter(renderTarget);
                    renderTarget.Resize(size);
                }
                catch(Exception )
                {

                }
                finally
                {
                    Monitor.Exit(renderTarget);
                }
                //CaculateRenderRect();
            }
        }

        private void DirectXViewer_Paint(object sender, PaintEventArgs e)
        {
            if (DesignMode) return;
            RenderScene();
        }

    

        public Bitmap RenderImage
        {
            set
            {
                TargetImage = value;
            }
            get
            {
                //if (imageAdapter.Width == 0 || imageAdapter.Height == 0)
                //    return null;
                ////imageAdapter.FlipImage();
                //Bitmap image = (Bitmap)Bitmap.FromHbitmap(imageAdapter.ImageBitmap);
                //imageAdapter.FlipImage();
                //return image;
                if (cacheBitmap == null)
                    return null;
                return (Bitmap)cacheBitmap.Clone();
            }
        }


        string IImageViewer.DeviceName
        {
            get { return "Direct2D Viewer"; }
        }

        string IImageViewer.Discription
        {
            get { return "This Viewer is multi-thread aware device"; }
        }


        bool IImageViewer.Visible
        {
            get
            {
                return this.Visible;
            }
            set
            {
                this.Visible = value;

            }
        }

        void IImageViewer.BeginInvoke(Delegate method)
        {
            this.BeginInvoke(method);
        }


        void CaculateRenderRect()
        {
            if (imageAdapter.Width == 0 || imageAdapter.Height == 0)
                return;
            switch(renderMode)
            {
                case ImageRenderMode.ModeNomal:
                    {
                        renderRect.Left = 0;
                        renderRect.Top = 0;
                        renderRect.Width = imageAdapter.Width;
                        renderRect.Height = imageAdapter.Height;
                        break;
                    }
                case ImageRenderMode.ModeCenter:
                    {
                        renderRect.Left = (Width - imageAdapter.Width) / 2;
                        renderRect.Top = (Height - imageAdapter.Height) / 2;
                        renderRect.Width = imageAdapter.Width;
                        renderRect.Height = imageAdapter.Height;
                        break;
                    }
                case ImageRenderMode.ModeStretch:
                    {
                        renderRect.Left = 0;
                        renderRect.Top = 0;
                        renderRect.Width = Width;
                        renderRect.Height = Height;
                        break;
                    }
                case ImageRenderMode.ModeZoom:
                    {
                        double wr =   (double)Width /(double)imageAdapter.Width;
                        double hr = (double)Height / (double)imageAdapter.Height;
                        if(wr < hr)
                        {
                            int w = Width;
                            int h = (int)(wr * (double)imageAdapter.Height);
                            renderRect.Left = 0;
                            renderRect.Top = (Height - h) / 2;
                            renderRect.Width = w;
                            renderRect.Height = h;
                        }
                        else
                        {
                            int w = (int)(hr * (double)imageAdapter.Width); ;
                            int h = Height;
                            renderRect.Left = (Width - w) / 2;
                            renderRect.Top = 0;
                            renderRect.Width = w;
                            renderRect.Height = h;
                        }
                        break;
                    }
                case ImageRenderMode.ModeUser:
                    {
                        renderRect.Left = 0;
                        renderRect.Top = 0;
                        renderRect.Width = imageAdapter.Width;
                        renderRect.Height = imageAdapter.Height;
                        break;
                    }
            }
        }
        public ImageRenderMode RenderMode
        {
            get
            {
                return renderMode;
            }
            set
            {
                renderMode = value;
                CaculateRenderRect();
                RenderScene();
            }
        }


        ImageRenderModeChange IImageViewerModeSwitch.modeChangeDelegate
        {
            get
            {
                return null;
            }
            set
            {
                
            }
        }

        private void DirectXViewer_MouseDown(object sender, MouseEventArgs e)
        {
            if (e.Button == System.Windows.Forms.MouseButtons.Left)
            {
                if (mousePressedFlag)
                {
                    mousePressedFlag = false;
                    return;
                }
                mousePressedFlag = true;
                this.Capture = true;
                if (renderMode == ImageRenderMode.ModeUser)
                {
                    originPoint.X = (int)renderRect.Left;
                    originPoint.Y = (int)renderRect.Top;
                    offset.Width = e.X - originPoint.X;
                    offset.Height = e.Y - originPoint.Y;
                }
                userSeletectRectangle.Left = e.Location.X;
                userSeletectRectangle.Top = e.Location.Y;
                Rectangle rect = new Rectangle((int)resizeHotRect.Left, (int)resizeHotRect.Top, (int)resizeHotRect.Width, (int)resizeHotRect.Height);
                lockResizeHotRectFlag = showImageResizeRectangle && renderMode == ImageRenderMode.ModeNomal && rect.Contains(e.Location);
                RenderScene();
            }
            //else if(e.Button == System.Windows.Forms.MouseButtons.Right)
            //{
            //    OpenFileDialog dlg = new OpenFileDialog();
            //    dlg.Filter = "All Images|*.bmp;*.jpg;*.png";
            //    if(dlg.ShowDialog() == DialogResult.OK)
            //    {
            //        Bitmap img = (Bitmap)Bitmap.FromFile(dlg.FileName);
            //        this.RenderImage = img;
            //        img.Dispose();
            //    }
            //}
            //e.
        }

        private void DirectXViewer_MouseMove(object sender, MouseEventArgs e)
        {

            if (mousePressedFlag)
            {
                if (renderMode == ImageRenderMode.ModeUser)
                {
                    float w = renderRect.Width;
                    float h = renderRect.Height;
                    renderRect.Left = e.X - offset.Width;
                    renderRect.Top = e.Y - offset.Height;
                    renderRect.Width = w;
                    renderRect.Height = h;
                }
                else
                {
                    if (enableObjectDrag)
                        StartDrag();
                    else
                    {
                        userSeletectRectangle.Right = e.Location.X;
                        userSeletectRectangle.Bottom = e.Location.Y;
                    }
                }

                if (renderMode == ImageRenderMode.ModeNomal && showImageResizeRectangle && lockResizeHotRectFlag)
                {
                    double r1 = (double)renderRect.Width / (double)e.Location.X;
                    double r2 = (double)renderRect.Height / (double)e.Location.Y;
                    if (r1 < r2)
                        r1 = r2;
                    int w = (int)((double)renderRect.Width / r1);
                    int h = cacheBitmap.Height * w / cacheBitmap.Width;
                    if(w >=32 && h >=32)
                    {
                        renderRect = new RectF(0, 0, w, h);
                    }
                }
                RenderScene();
           }
            

        }

        private void StartDrag()
        {
            if (cacheBitmap != null)
            {
                DataObject dataObject = new DataObject(); 
                dataObject.SetData(typeof(BitmapTransfer), new BitmapTransfer(cacheBitmap));
                dataObject.SetData(DataFormats.Bitmap, cacheBitmap); 
               this.DoDragDrop(dataObject, DragDropEffects.All);
            }
               // this.DoDragDrop(new Bitmap(cacheBitmap), DragDropEffects.Copy);
        }
        private void DirectXViewer_MouseUp(object sender, MouseEventArgs e)
        {
            if (lockResizeHotRectFlag)
            {
                Bitmap newImage = new Bitmap(cacheBitmap, new Size((int)renderRect.Width,(int)renderRect.Height));
                if(beforeAcceptingImageHandle != null)
                {
                    beforeAcceptingImageHandle(ref newImage);
                }
                RenderImage = newImage;

            }
            mousePressedFlag = false;
            this.Capture = false;
            lockResizeHotRectFlag = false;
            RenderScene();
        }
        private void DirectXViewer_MouseWheel(object sender, MouseEventArgs e)
        {
            if (renderMode != ImageRenderMode.ModeUser)
                return;
            if (targetImage == null)
                return;
            if(e.Delta > 0)
            {
                int w = (int)(renderRect.Width * 1.2);
                int h = (int)(renderRect.Height * 1.2);
                int x = (int)((int)renderRect.Left - (w - (int)renderRect.Width) / 2);
                int y = (int)((int)renderRect.Top - (h - (int)renderRect.Height) / 2);
                renderRect.Left = x;
                renderRect.Top = y;
                renderRect.Width = w;
                renderRect.Height = h;
                RenderScene();
            }
            else
            {
                int w = (int)(renderRect.Width / 1.2);
                int h = (int)(renderRect.Height / 1.2);
                int x = (int)((int)renderRect.Left - (w - (int)renderRect.Width) / 2);
                int y = (int)((int)renderRect.Top - (h - (int)renderRect.Height) / 2);
                renderRect.Left = x;
                renderRect.Top = y;
                renderRect.Width = w;
                renderRect.Height = h;
                RenderScene();
            }
        }


        public void LoadImage(string path)
        {
            Bitmap image = (Bitmap)Bitmap.FromFile(path);
            if (BeforeAcceptingImageHandle != null)
            {
                BeforeAcceptingImageHandle(ref image);
            }
            TargetImage = image;
            image.Dispose();
        }

        public void SaveImage(string path)
        {
            if (targetImage != null)
            {
               
                SizeU size = new SizeU((uint)imageAdapter.Width, (uint)imageAdapter.Height);

                ImagingBitmap wicBitmap = wicFactory.CreateImagingBitmap(
                    size.Width,
                    size.Height,
                    PixelFormats.Bgr32Bpp,
                    BitmapCreateCacheOption.CacheOnLoad);
                RenderTarget wicRenderTarget =
                        d2dFactory.CreateWicBitmapRenderTarget(wicBitmap, renderProps);

                wicRenderTarget.BeginDraw();

                wicRenderTarget.DrawBitmap(targetImage);
                wicRenderTarget.EndDraw();

                Guid fileType;
                string ext = Path.GetExtension(path);
                ext = ext.ToLower();
                switch (ext)
                {
                    case ".bmp": fileType = ContainerFormats.Bmp;
                        break;
                    case ".png": fileType = ContainerFormats.Png;
                        break;
                    case ".jpeg": fileType = ContainerFormats.Jpeg;
                        break;
                    case ".gif": fileType = ContainerFormats.Gif;
                        break;
                    case ".tiff": fileType = ContainerFormats.Tiff;
                        break;
                    default: fileType = ContainerFormats.Png; // default to bitmap files
                        break;
                }
                wicBitmap.SaveToFile(wicFactory, fileType, path);
            }
            else
            {
               
            }
        }

        void IImageViewrCommon.ShowImage(Bitmap image)
        {
            TargetImage = image;
        }

        void IImageViewrCommon.ClearBackGround(Color color)
        {
            backgroundColor = new ColorF(color.ToArgb());
            RenderScene();
        }


        void IImageViewrCommon.Copy()
        {
            if (imageAdapter.Width == 0 || imageAdapter.Height == 0) return;

            imageAdapter.FlipImage();
            Bitmap image = Bitmap.FromHbitmap(imageAdapter.ImageBitmap);
            Clipboard.SetDataObject(image);
            imageAdapter.FlipImage();
               // image.Dispose();
        }

        void IImageViewrCommon.Paste()
        {
            IDataObject iData = Clipboard.GetDataObject();

            if (iData.GetDataPresent(DataFormats.Bitmap))
            {
                TargetImage = (Bitmap)iData.GetData(DataFormats.Bitmap);
            }
        }

        private void DirectXViewer_DragEnter(object sender, DragEventArgs e)
        {
            if (e.Data.GetDataPresent(DataFormats.Bitmap) ||
            e.Data.GetDataPresent(DataFormats.FileDrop) || 
            e.Data.GetDataPresent(typeof(CvAdapter.ImageAdapter)))// || IsImageProcessor(e.Data)
            {
               
                e.Effect = DragDropEffects.Copy;
                Console.WriteLine("Desired dragged Object");
            }
            else
            {
                e.Effect = DragDropEffects.None;
                Console.WriteLine("Undesired dragged Object");
            }
        }

        //private bool IsImageProcessor(IDataObject dataObject)
        //{
        //    Type pType = typeof(CvImageProcessor);
        //    Type p = dataObject.GetType().GetInterface(pType.Name);
        //    if( p == pType)
        //        return true;
        //    return false;
           
        //}

        private void DirectXViewer_DragDrop(object sender, DragEventArgs e)
        {
            mousePressedFlag = false;
            if (e.Data.GetDataPresent(DataFormats.FileDrop))
            {
                // Assign the file names to a string array, in 
                // case the user has selected multiple files.
                string[] files = (string[])e.Data.GetData(DataFormats.FileDrop);
                try
                {
                    int n = 0;
                    if (files.Length > 0)
                    {
                        String ext = Path.GetExtension(files[0]);
                        ext = ext.ToLower();
                        if (ext == ".jpg" || ext == ".bmp" || ext == ".png")
                        {
                            n++;
                            Bitmap input = (Bitmap)Bitmap.FromFile(files[0]);
                            if (userDragNewImageCallBack != null)
                            {
                                userDragNewImageCallBack(input);
                            }
                            if (BeforeAcceptingImageHandle != null)
                            {
                                BeforeAcceptingImageHandle(ref input);
                            }
                            this.TargetImage = input;
                            
                            input.Dispose();
                        }
                    }

                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                    return;
                }
            }
            else if (e.Data.GetDataPresent(typeof(BitmapTransfer))) 
            {
                BitmapTransfer bitmapTransfer = (BitmapTransfer)e.Data.GetData(typeof(BitmapTransfer));
                RenderImage = bitmapTransfer.ToBitmap(); 
            }
            else if (e.Data.GetDataPresent(DataFormats.Bitmap)) 
            { 
                Bitmap b = (Bitmap)e.Data.GetData(DataFormats.Bitmap);
                RenderImage = b;
            }
        }

        private void DirectXViewer_DragLeave(object sender, EventArgs e)
        {
        }

        private void DirectXViewer_DragOver(object sender, DragEventArgs e)
        {
          //  e.Effect = DragDropEffects.Copy;
          //  e.Data.SetData(RenderImage);
        }



        unsafe public void ShowFeature(double[] feature, int startIndex, int offset)
        {
            fixed(double* pt = &feature[0])
            {
                ShowFeature(pt, feature.Length, startIndex, offset);
            }
        }


        unsafe public void ShowFeature(double* feature, int len, int startIndex, int offset)
        {
            if (startIndex < 0)
                startIndex = 0;
            if (startIndex + offset > len)
                offset = len - startIndex;
            if (offset <= 0)
                return;
            CreateDeviceResources();

            try
            {
                Monitor.Enter(renderTarget);
                if (renderTarget.IsOccluded)
                    return;
                renderTarget.BeginDraw();
                
                renderTarget.Clear(backgroundColor);
                Brush brush = renderTarget.CreateSolidColorBrush(new ColorF(Color.Red.ToArgb()));
                Brush brush1 = renderTarget.CreateSolidColorBrush(new ColorF(Color.White.ToArgb()));
                int SampleCount = (int)renderTarget.Size.Width;
                int maxRange = (int)renderTarget.Size.Height;
                double min = double.MaxValue;
                double max = double.MinValue;
                double v = 0;
                double sampleStep = (double)offset / (double)SampleCount;
                float featureScale = 1;
                int verticalOffset = 0;
                double t = 0;
                for (int i = startIndex; i <startIndex + offset;)
                {
                    v = feature[i];
                    if (v > max)
                        max = v;
                    if (v < min)
                        min = v;
                    t += sampleStep;
                    i = (int)t;
                }
                if (min >= 0 && max > 0)
                {
                    featureScale = (float)maxRange / (float)max;
                }
                else if (min < 0 && max > 0)
                {
                    verticalOffset = maxRange / 2;
                    featureScale = (float)verticalOffset / (float)Math.Max(-min, max);
                }
                else if (min < 0 && max < 0)
                {
                    verticalOffset = maxRange;
                    featureScale = (float)maxRange / (float)-min;
                }
               
                Point2F pt1 = new Point2F();
                Point2F pt2 = new Point2F();
                pt1.X = 0;
                pt2.X = renderRect.Width;
                pt1.Y = maxRange -  verticalOffset;
                pt2.Y = maxRange - verticalOffset;

                //renderTarget.DrawLine(pt1, pt2, brush1, 1);
                pt1.X = 0;
                pt1.Y = maxRange - (float)feature[startIndex] * featureScale + verticalOffset;
                double stepIndex = startIndex;
               
                for (int i = 1; i < SampleCount; i ++ )
                {
                    pt2.X = (float)i;
                    pt2.Y = maxRange - (float)feature[(int)stepIndex] * featureScale + verticalOffset;
                    renderTarget.DrawLine(pt1, pt2, brush, 1);
                    pt1.X = pt2.X;
                    pt1.Y = pt2.Y;
                    stepIndex += sampleStep;
                    if (stepIndex > startIndex + offset)
                        break;
                }
                if (userContentDrawingDelegate != null)
                    userContentDrawingDelegate(renderTarget);
            }
            catch (Exception)
            { }//renderTarget.DrawBitmap(targetImage);
            finally
            {
                renderTarget.EndDraw();
                Monitor.Exit(renderTarget);
            }
        }

        private void saveAsToolStripMenuItem_Click(object sender, EventArgs e)
        {
            SaveFileDialog dlg = new SaveFileDialog();
            dlg.Filter = "jpeg Image|*.jpg|portable network graphic|*.png|Windows Bitmap|*.bmp|tiff image|*.tiff";
            if (dlg.ShowDialog() == DialogResult.OK)
            {
                SaveImage(dlg.FileName);
            }
        }
    }
}
