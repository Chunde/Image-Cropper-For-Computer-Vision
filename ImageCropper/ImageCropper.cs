using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.IO;
using System.Threading;
using System.Reflection;
using CoolControlEx;
using CommonInterface;
using System.Diagnostics;
using Microsoft.VisualBasic.FileIO;
using Microsoft.VisualBasic;
using Microsoft.WindowsAPICodePack.DirectX.Direct2D1;
using CommonUtil;
using System.Runtime.Serialization;
using System.Runtime.Serialization.Formatters.Binary;
using FrameworkHelper;
using Microsoft.WindowsAPICodePack.DirectX.DirectWrite;
using System.Globalization;
using SampleCropor;
namespace FeatureStudio
{
   
    unsafe public partial class ImageCropper : Form
    {
        
        public ImageCropper()
        {
            InitializeComponent();
            CreateDirectViewer();
            CreateAdditionalComponent();
            InitializeOtherComponent();
        }
       
        private void InitializeOtherComponent()
        {
            drawFont = this.Font;
            //mainToolStrip.Location = new Point(0, 0);
            newImageEvent = new ManualResetEvent(false);
            showImageEvent = new ManualResetEvent(true);
        
          
            for (int i = 0; i < waveShowOptionFlag.Length; i++)
            {
                waveShowOptionFlag[i] = true;
            }
           
            //videoViewer.MouseMove += new MouseEventHandler(MouseTest);
            new TabPadding(mainTabControl);
           
        }

        private void CreateAdditionalComponent()//Halley 2011/12/22 15:22
        {
            ContextMenuStrip menu = new ContextMenuStrip();
            menu.Items.Add("Startup options");
          
            GenerateToolBarsStripMenuItems();
        }
       
     
        private void UpdatePipeView()
        {
           
        }

        #region member region
        DirectXViewer videoViewer = null;
        Point liveRectangleOrigin = new Point();
        Size liveRectangleSize = new Size(64,64);
        Size preferRectangleSize = new Size(64, 64);
        //ImageAdapter liveImageAdapter = new ImageAdapter();
        bool[] waveShowOptionFlag = new bool[6];
        bool showLiveRectangleFlag = true;
        bool mousePressFlag = false;
        bool lockLiveRectSizeFlag = false;
        Size maximumImageSize = new Size(800, 640);
        //Sample Color Variables
        bool sampleColor = false;
        int[] sampleBuffer = new int[512];
        int sampleOffset = 0;
        Point sampleLocation;
        List<String> sourceImageList = new List<string>();
        int sourceImageIndex = 0;
        DynamicInstanceContainer dynamicInstanceContainer = new DynamicInstanceContainer();

        List<Control> userControlBarList = new List<Control>();
        string saveOutputResultPath = null;
        uint globalImageFileNameIndex = 0;
        //control model members
        bool controlModelSupportedFlag = false;
        bool overlayControlResultFlag = true;
        Color overlayControlResultColor = Color.Yellow;
        #endregion
        public delegate void InvokeAddListViewItem(ListViewItem[] items);
        private void GenerateToolBarsStripMenuItems()
        {
            userControlBarList = new List<Control>();
            System.Windows.Forms.Control.ControlCollection controls = null;
            controls = toolStripContainer.TopToolStripPanel.Controls;
            for (int i = 0; i < controls.Count; i++)
            {
                if ((controls[i].GetType() == typeof(ToolStrip)) || (controls[i].GetType() == typeof(StatusStrip)))
                {
                    userControlBarList.Add(controls[i]);
                }
            }
            controls = toolStripContainer.BottomToolStripPanel.Controls;
            for (int i = 0; i < controls.Count; i++)
            {
                if ((controls[i].GetType() == typeof(ToolStrip)) || (controls[i].GetType() == typeof(StatusStrip)))
                {
                    userControlBarList.Add(controls[i]);
                }
            }
            controls = toolStripContainer.LeftToolStripPanel.Controls;
            for (int i = 0; i < controls.Count; i++)
            {
                if ((controls[i].GetType() == typeof(ToolStrip)) || (controls[i].GetType() == typeof(StatusStrip)))
                {
                    userControlBarList.Add(controls[i]);
                }
            }
            controls = toolStripContainer.RightToolStripPanel.Controls;
            for (int i = 0; i < controls.Count; i++)
            {
                if ((controls[i].GetType() == typeof(ToolStrip)) || (controls[i].GetType() == typeof(StatusStrip)))
                {
                    userControlBarList.Add(controls[i]);
                }
            }
            ///扫描结束后
            ///下面的代码用来动态生成这个菜单
            ///             
            this.toolBarsToolStripMenuItem.DropDownItems.Clear();
            ToolStripMenuItem[] items = new ToolStripMenuItem[userControlBarList.Count];
            for (int i = 0; i < userControlBarList.Count; i++)
            {
                items[i] = new ToolStripMenuItem();                 //items[i].Name = controlList[i].Name;
                items[i].Text = userControlBarList[i].Text;
                //items[i].Checked = userControlBarList[i].Visible;
                items[i].Click += new EventHandler(ShowOrHideToolbarEvent);
            }
            this.toolBarsToolStripMenuItem.DropDownItems.AddRange(items);
            //int offset = 0;
          // toolStripContainer.SuspendLayout();
            //for (int i = userControlBarList.Count - 1; i >= 0; i--)
            //{
            //    userControlBarList[i].Location = new Point(offset, 0);
            //    offset += userControlBarList[i].Visible ? userControlBarList[i].Width : 0;
            //}
           // mainMenuStrip.Location = new Point(0, 0);
          //  toolStripContainer.ResumeLayout();
        }
        private void ShowOrHideToolbarEvent(Object obj, EventArgs e)
        {
            for (int i = 0; i < userControlBarList.Count; i++)
            {
                if (obj.Equals(toolBarsToolStripMenuItem.DropDownItems[i]))
                {
                    bool flag = userControlBarList[i].Visible;
                    userControlBarList[i].Visible = !flag;
                    ((ToolStripMenuItem)toolBarsToolStripMenuItem.DropDownItems[i]).Checked = !flag;
                    return;
                }
            }

        }
      
        private void CreateDirectViewer()
        {
            videoViewer = new DirectXViewer();
            videoViewer.EnableObjectDrag = false;
            videoViewer.ContextMenuStrip = null;
            videoViewer.ShowImageResizeRectangle = true;
            videoViewer.BeforeAcceptingImageHandle = new BeforeAccpectingFedImageDelegate(CheckFeedingImage);
            videoViewer.MouseDown += new MouseEventHandler(MonitorMouseDown);
            videoViewer.MouseMove += new MouseEventHandler(MonitorMouseMove);
            videoViewer.MouseUp += new MouseEventHandler(MonitorMouseUp);
            videoViewer.MouseWheel += new MouseEventHandler(MonitorMouseWheel);
            videoViewer.MouseDoubleClick += new MouseEventHandler(MonitorMouseDoubleClicked);
            videoViewer.UserContentDrawingDelegate = new UserContentDrawingMethod(UserDrawingDelegate);
            videoViewer.ContextMenuStrip = videocontextMenuStrip;
            directXViewSplitContainer.Panel1.Controls.Add(videoViewer);
            videoViewer.Dock = DockStyle.Fill;
            videoViewer.Cursor = System.Windows.Forms.Cursors.Cross;

         
        }
        void CheckFeedingImage(ref Bitmap _image)
        {
            if(_image != null)
            {
                Boolean scaleFlag = false;
                if (_image.Width > maximumImageSize.Width || _image.Height > maximumImageSize.Height)
                {
                    double r1 = (double)_image.Width / (double)maximumImageSize.Width;
                    double r2 = (double)_image.Height / (double)maximumImageSize.Height;
                    if (r2 > r1)
                        r1 = r2;
                    int w = (int)((double)_image.Width / r1);
                    int h = (int)((double)_image.Height / r1);
                    _image = new Bitmap(_image, w, h);
                    scaleFlag = true;
                }
                UpdateImageInvoker(_image);
                imageInfoToolStripStatusLabel.Text = "Image Size" + _image.Size.ToString() + " Scaled{" + scaleFlag.ToString() + "}";
            }
            
        }
        private void MonitorMouseDown(Object sender, MouseEventArgs arg)
        {
            if (arg.Button == MouseButtons.Left)
            {
                mousePressFlag = true;
            }
          
        }
        private void MonitorMouseDoubleClicked(Object sender, MouseEventArgs arg)
        {
            if (videoViewer.RenderImage != null && showLiveRectangleFlag)
            {
                SaveSelectImageRegion();
            }
        }
        private void MonitorMouseMove(Object sender, MouseEventArgs arg)
        {
            mouseInfoToolStripStatusLabel.Text = arg.Location.ToString();
            if (mousePressFlag)
            {
                if (showLiveRectangleFlag)// && PointInRect(arg.Location, new Rectangle(liveRectangleOrigin, liveRectangleSize))
                {
                    mouseInfoToolStripStatusLabel.Text = arg.Location.ToString();
                    readyStatusLabel.Text = liveRectangleOrigin.ToString() + liveRectangleSize.ToString();
                    liveRectangleOrigin = new Point(arg.Location.X - liveRectangleSize.Width / 2, arg.Location.Y - liveRectangleSize.Height / 2);
                    videoViewer.UpdateView();
                  
                    return;
                }
                if (sampleColor && SampleLocationInView(arg.Location))
                {
                    sampleLocation = arg.Location;
                }
           }

        }

        private bool SampleLocationInView(Point point)
        {
            int dif = (point.X - sampleLocation.X) * (point.X - sampleLocation.X) + (point.Y - sampleLocation.Y) * (point.Y - sampleLocation.Y);
            if (dif <= 25)
                return true;
            return false;
        }

        
        private void MonitorMouseUp(Object sender, MouseEventArgs arg)
        {
            mousePressFlag = false;
        }
        private void UserDrawingDelegate(RenderTarget target)
        {
            if (showLiveRectangleFlag)
            {
                
                
                target.DrawRectangle(new RectF(liveRectangleOrigin.X, liveRectangleOrigin.Y, liveRectangleOrigin.X + liveRectangleSize.Width, liveRectangleOrigin.Y + liveRectangleSize.Height), target.CreateSolidColorBrush(new ColorF(Color.Red.ToArgb())), 1);
            }
            if (sampleColor)
            {
                int dif = 5;
                Microsoft.WindowsAPICodePack.DirectX.Direct2D1.Brush brush = target.CreateSolidColorBrush(new ColorF(Color.Red.ToArgb()));
                Microsoft.WindowsAPICodePack.DirectX.Direct2D1.Point2F p1 = new Microsoft.WindowsAPICodePack.DirectX.Direct2D1.Point2F(sampleLocation.X - dif, sampleLocation.Y);
                Microsoft.WindowsAPICodePack.DirectX.Direct2D1.Point2F p2 = new Microsoft.WindowsAPICodePack.DirectX.Direct2D1.Point2F(sampleLocation.X + dif, sampleLocation.Y);
                target.DrawLine(p1, p2, brush, 1);
                p1 = new Microsoft.WindowsAPICodePack.DirectX.Direct2D1.Point2F(sampleLocation.X, sampleLocation.Y - dif);
                p2 = new Microsoft.WindowsAPICodePack.DirectX.Direct2D1.Point2F(sampleLocation.X, sampleLocation.Y + dif);
                target.DrawLine(p1, p2, brush, 1);
            }
           
        }

        private void MonitorMouseWheel(Object sender, MouseEventArgs arg)
        {
            if (showLiveRectangleFlag)
            {
                mouseInfoToolStripStatusLabel.Text = arg.Location.ToString();
                readyStatusLabel.Text = liveRectangleOrigin.ToString() + liveRectangleSize.ToString();
                if (PointInRect(arg.Location,new Rectangle(liveRectangleOrigin,liveRectangleSize)))
                {
                    if (lockLiveRectSizeFlag)
                        return;
                    
                     if (arg.Delta > 0)
                    {
                        liveRectangleSize.Width = Math.Max((int)((double)liveRectangleSize.Width * 1.05), liveRectangleSize.Width + 1);
                        liveRectangleSize.Height = preferRectangleSize.Height * liveRectangleSize.Width / preferRectangleSize.Width;

                    }
                    else
                    {
                        liveRectangleSize.Width = (int)((double)liveRectangleSize.Width / 1.05);
                        liveRectangleSize.Height = preferRectangleSize.Height * liveRectangleSize.Width / preferRectangleSize.Width;
                    }
                    liveRectangleOrigin = new Point(arg.Location.X - liveRectangleSize.Width / 2, arg.Location.Y - liveRectangleSize.Height / 2);
                    UpdateLiveRectInfo();
                    videoViewer.UpdateView();
                   
                }
               
               
            }
            

        }

        private void UpdateLiveRectInfo()
        {
            //throw new NotImplementedException();
        }

       
        private void AppendMsg(string p, string p_2)
        {
           
        }
       
        #region System Framework Members
        private System.Drawing.Font drawFont = null;
        float maximunResponseValue = 20.0f;
        #endregion
        #region Common Members
      
        
       
        Bitmap backupImage = null;
        String subRegionSavePath = null;
        ManualResetEvent newImageEvent = null;
        ManualResetEvent showImageEvent = null;
        object shareImageObject = new object();//用来协调不同任务的同步对象，可能会在后期丢弃不用
        #endregion
        public delegate void InvokeDelegate();
        public delegate void InvokeMsgDelegate(String msg);
        public delegate void InvokeObjectDelegate(object obj);
       
        #region Multi-Mode Memenber
       
        //AutoResetEvent[] autoEvent = null;//用来确定所有线程都完成后，可以用WaitAll来退出程序
        public delegate void UpdateImageInvokerDelegate(Bitmap image);
        ManualResetEvent detectManualEvent = new ManualResetEvent(false);
        public delegate void ProcessNewImage();//声明一个代表类型
        public ProcessNewImage ProcessceNewImageMothed = null;//用一个代表来表示需要调用的处理新图片的方法，同样为了灵活
     
        //******************************************************************************
        //******************************************************************************
        //******************************************************************************
        #endregion
       
       

        #region Process image region
    
     

        private string GetImageName(int i)
        {
            //DateTime dt = DateTime.Now;
            string filePath = "Output_" + globalImageFileNameIndex.ToString() + "_" + i.ToString();
            return saveOutputResultPath + "\\" + filePath + ".jpg";
            
        }

     
        
        #endregion
        public delegate void AppendMessageDelegate(object source, String msg);
        private void ShowCrossThreadsMessage(string type, string message)
        {
            //outputWindow.BeginInvoke(new AppendMessageDelegate(outputWindow.AppendMsg), new object[] { type, message });
        }

   


        private void ExpressionDetector_FormClosing(object sender, FormClosingEventArgs e)
        {
        }

      
   
      
         public void CreateParentPath(string path)
         {
             string p = Path.GetDirectoryName(path);
             if (!Directory.Exists(p))
             {
                 CreateParentPath(p);
             }
             else
                 Directory.CreateDirectory(path);
         }
        /// <summary>
       
         #region System Framework Methods
         
     
         //用来处理进程未被处理的异常，在Application中被触发
         public static void MainUITHreadExceptionHandler(object sender, ThreadExceptionEventArgs e)
         {
             MessageBox.Show(e.Exception.Message.ToString());
         }
         protected override bool ProcessCmdKey(ref System.Windows.Forms.Message msg, System.Windows.Forms.Keys keyData)
         {

           
            if((keyData & Keys.Alt)== Keys.Alt)
            {
                mainMenuStrip.Visible = !mainMenuStrip.Visible;
            }
            if (keyData == Keys.Delete)
            {
                
             }
             else if (keyData == Keys.Space)
             {
                 SaveSelectImageRegion();
             }
            else if(keyData == Keys.Left)
            {
                if (previousImageToolStripButton.Enabled)
                    LoadPreviousImage();
            }
            else if(keyData == Keys.Right)
            {
                if (nextImageToolStripButton.Enabled)
                    LoadNextImage();
            }


             return false;
         }

 
     
         private void AppendMsg(string p)
         {
           //  outputTextBox.AppendText("\r\n" + DateTime.Now.ToString() + ": " +  p);
         }

         private bool IsConfinedInImage(int x, int y, int w, int h, Bitmap image)
         {
             if (x < 0 || y < 0)
                 return false;
             if (x + w >= image.Width || y + h >= image.Height)
                 return false;
             return true;
         }

  
         #endregion
         #region Video Show Model
        
        
       

         private void EnableToolStripItems(ToolStrip toolStrip, bool p)
         {
            
            for(int i = 0; i < toolStrip.Items.Count;i ++)
            {
                toolStrip.Items[i].Enabled = p;
            }
         }
         #endregion
     

             
         private bool PointInRect(Point point, Rectangle hotRect)
         {
             if (point.X < hotRect.Left || point.X > hotRect.Right)
                 return false;
             if (point.Y < hotRect.Top || point.Y > hotRect.Bottom)
                 return false;
             return true;
         }

       
         private void standarImageToolStrip_ItemClicked(object sender, ToolStripItemClickedEventArgs e)
         {
             int index = -1;
             for (int i = 0; i < standarImageToolStrip.Items.Count; i++)
             {
                 if (e.ClickedItem == standarImageToolStrip.Items[i])
                 {
                     index = i;
                     break;
                 }
             }
             IImageViewrCommon ic = (IImageViewrCommon)videoViewer;
             if (index == -1) return;
             switch (index)
             {
                 case 0:
                     {
                         OpenFileDialog dlg = new OpenFileDialog();
                         dlg.Filter = "All Support Images|*.bmp;*.jpg;*.png;*.gif;*.tiff";
                         if (dlg.ShowDialog() == System.Windows.Forms.DialogResult.OK)
                             ic.LoadImage(dlg.FileName);
                         break;
                     }
                 case 1:
                     {
                         SaveFileDialog dlg = new SaveFileDialog();
                         dlg.Filter = "Bmp Image|*.bmp|Jpeg Image|*.jpg|Potable Image|*.png|Web Image|*.gif|Tiff Image|*.tiff";
                         if (dlg.ShowDialog() == System.Windows.Forms.DialogResult.OK)
                             ic.SaveImage(dlg.FileName);
                         break;
                     }
                 case 3:
                     {
                         ic.Copy();
                         break;
                     }
                 case 4:
                     {
                         ic.Paste();
                         break;
                     }
                 case 5:
                     {
                         ColorDialog dlg = new ColorDialog();
                         if (dlg.ShowDialog() == System.Windows.Forms.DialogResult.OK)
                         {
                             ic.ClearBackGround(dlg.Color);
                         }
                         break;
                     }
             }
         }
        
         public Bitmap PopPoolImage
         {
             get { throw new NotImplementedException(); }
         }

         public Bitmap PushPoolImage
         {
             set { throw new NotImplementedException(); }
         }

         public void ClearPool()
         {
             throw new NotImplementedException();
         }

         public int ImagePoolSize
         {
             get { throw new NotImplementedException(); }
         }

         public string ImagePoolName
         {
             get
             {
                 return "Analyze View Source";
             }
             set
             {
                
             }
         }

         public string ImagePoolDescription
         {
             get
             {
                 return "Get images from the analyze tree view pool manager.";
             }
             set
             {
                 //throw new NotImplementedException();
             }
         }

      
         public Bitmap PopImageAt(int index)
         {
             throw new NotImplementedException();
         }

         public Bitmap PushImageAt(int index)
         {
             throw new NotImplementedException();
         }

        

       

         

       
       
        
       
      
       

   
         void LoadDescriptorModelMouseEvent(Object sender, MouseEventArgs args)
         {

         }

       
       #region FrameWork Helper
         private bool HasInterface(Type type, Type type_2)
         {
             if (type.GetInterface(type_2.Name) == type_2)
                 return true;

             return false;
         }
        #endregion

       
        
      

       
         #region Anaylyse Context Menu
       

     
      
    
         #endregion
         private void AppenMessage(string p, string p_2)
         {
             ShowCrossThreadsMessage(p, p_2);
         }
         #region Analysis pageview methods
        
      

       

         private string GetCompareString(string compareStr)
         {
             int id = compareStr.IndexOf("(");
             if (id != -1)
                 compareStr = compareStr.Substring(0, id);
             id = compareStr.IndexOf("[");
             if (id != -1)
                 compareStr = compareStr.Substring(0, id);
             return compareStr;
         }
     
      

        
        

       

   
         private void filterViewButton_Click(object sender, EventArgs e)
         {

         }

     

     

     

     
        


      
       

        
       
       
        
       

   
        
#endregion
        private void splitContainer1_Panel2_SizeChanged(object sender, EventArgs e)
        {
            int len = mainSplitContainer.Panel2.Width;
            int[] buf = new int[len];
            if (len > sampleBuffer.Length)
            {
                for (int i = 0; i < sampleOffset; i++)
                    buf[i] = sampleBuffer[i];
            }
            else
            {
                for (int i = 0; i < sampleOffset && i < len; i++)
                {
                    buf[i] = sampleBuffer[i];
                }
                if (sampleOffset > len - 1)
                    sampleOffset = len - 1;

            }

            sampleBuffer = buf;
        }

      

        private void videocontextMenuStrip_Opening(object sender, CancelEventArgs e)
        {
            videocontextMenuStrip.Items[0].Enabled = videoViewer.RenderImage != null ;
            videocontextMenuStrip.Items[0].Text = showLiveRectangleFlag? "Hide Live Rectangle" : "Show Live Rectangle";
            videocontextMenuStrip.Items[1].Enabled = showLiveRectangleFlag;
        }

        private void videocontextMenuStrip_ItemClicked(object sender, ToolStripItemClickedEventArgs e)
        {
            videocontextMenuStrip.Close();
            int id = -1;
            for (int i = 0; i < videocontextMenuStrip.Items.Count; i++)
            {
                if (e.ClickedItem == videocontextMenuStrip.Items[i])
                {
                    id = i;
                    break;
                }
            }
            if (id == -1)
                return;
            switch (id)
            {
                case 0:
                    {
                        if (videoViewer.RenderImage == null)
                            return;
                        showLiveRectangleFlag = !showLiveRectangleFlag;
                        videoViewer.UpdateView();
                        break;
                    }
                case 1:
                    {
                        SaveSelectImageRegion();
                        break;
                    }
                
                
                case 3:
                    {
                        setSubImageSavePath();
                        break;
                    }
            }
        }

        private void setSubImageSavePath()
        {
            FolderBrowserDialog dlg = new FolderBrowserDialog();
            if (subRegionSavePath != null)
            {
                dlg.SelectedPath = Path.GetDirectoryName(subRegionSavePath);
            }
            if (dlg.ShowDialog() == DialogResult.OK)
            {
                subRegionSavePath = dlg.SelectedPath;
            }
        }

        private void SaveSelectImageRegion()
        {
            if (!showLiveRectangleFlag)
            {
                return;
            }
            if (backupImage == null)
            {
                return;
            }
            if (!Monitor.TryEnter(shareImageObject))
            {
                return;
            }
            try
            {
                if (liveRectangleSize.Width == 0 || liveRectangleSize.Height == 0)
                {
                    return;
                }
                Bitmap subimage = new Bitmap(liveRectangleSize.Width,liveRectangleSize.Height);
                Graphics g = Graphics.FromImage(subimage);
                g.DrawImage(backupImage, new Rectangle(0, 0, liveRectangleSize.Width, liveRectangleSize.Height), new Rectangle(liveRectangleOrigin, liveRectangleSize), GraphicsUnit.Pixel);
                DateTime dt = DateTime.Now;
                string filePath = "Sub" + dt.Year.ToString() + "_" + dt.Month.ToString() + "_" + dt.Day.ToString() + "_" + dt.Hour.ToString() + "_" + dt.Minute.ToString() + "_" +dt.Second.ToString();
                if (subRegionSavePath == null)
                {
                    SaveFileDialog dlg = new SaveFileDialog();
                    dlg.Filter = "Jpg image|*.jpg";
                    dlg.FileName = filePath;
                    if (dlg.ShowDialog() == DialogResult.OK)
                    {
                        subimage.Save(dlg.FileName);
                    }
                }
                else
                {
                    subimage.Save(subRegionSavePath + "\\" + filePath + ".jpg");
                }
               
            }
            catch (System.Exception ex)
            {
                MessageBox.Show(ex.Message.ToString());
            }
            finally
            {
                Monitor.Exit(shareImageObject);
            }
        }

        private void featureMonitorToolStripButton_Click(object sender, EventArgs e)
        {
            mainSplitContainer.Panel2Collapsed = !mainSplitContainer.Panel2Collapsed;            
        }

       
        
      
       


       
     
        private void loadDetectorButton_Click(object sender, EventArgs e)
        {

        }

      

       
        private void globalProgressBar_DoubleClick(object sender, EventArgs e)
        {
            
            
           
        }
       
        

    

        #region Generic Trainer Division
     
     

      
      

        private void existingInstanceToolStripMenuItem_DropDownOpening(object sender, EventArgs e)
        {

        }

        
     

       
     
        #endregion

       
     

        
      

        private void toolBarsToolStripMenuItem_DropDownOpened(object sender, EventArgs e)
        {
            for (int i = 0; i < userControlBarList.Count; i++)
            {
                ((ToolStripMenuItem)toolBarsToolStripMenuItem.DropDownItems[i]).Checked = userControlBarList[i].Visible;
            }
        }

        private void mainMenuStrip_VisibleChanged(object sender, EventArgs e)
        {
            if (mainMenuStrip.Visible)
            {
                mainMenuStrip.Location = new Point(0, 0);
                
            }
        }

      

   
 
        private void enableControlModelOverlayToolStripButton_Click(object sender, EventArgs e)
        {
            overlayControlResultFlag = !overlayControlResultFlag;
            if (mainTabControl.SelectedIndex == 0 && controlModelSupportedFlag && !overlayControlResultFlag)
            {
                directXViewSplitContainer.Panel2Collapsed = false;
            }
            else
            {
                directXViewSplitContainer.Panel2Collapsed = true;
            }
        }

        private void controlModelResultColorToolStripButton_Click(object sender, EventArgs e)
        {
            ColorDialog dlg = new ColorDialog();
            if (dlg.ShowDialog() == DialogResult.OK)
            {
                overlayControlResultColor = dlg.Color;
            }

        }



        private void listViewDisplayModelToolStripSplitButton_DropDownItemClicked(object sender, ToolStripItemClickedEventArgs e)
        {

        }

       
        


      

        private void saveOutputResultToolStripSplitButton_ButtonClick(object sender, EventArgs e)
        {

        }

        private void saveOutputResultToolStripSplitButton_DropDownItemClicked(object sender, ToolStripItemClickedEventArgs e)
        {

        }

        private void preferWidthToolStripTextBox_TextChanged(object sender, EventArgs e)
        {
            try
            {
                preferRectangleSize.Width = int.Parse(preferWidthToolStripTextBox.Text);
                liveRectangleSize.Width = preferRectangleSize.Width;
                UpdateBoundedRect();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.ToString());
            }
        }

       

        private void preferHeightToolStripTextBox_TextChanged(object sender, EventArgs e)
        {
            try
            {
                preferRectangleSize.Height = int.Parse(preferHeightToolStripTextBox.Text); 
                liveRectangleSize.Height = preferRectangleSize.Height;
                UpdateBoundedRect();
            }
            catch(Exception ex)
            {
                MessageBox.Show(ex.Message.ToString());
            }
        }

        private void UpdateBoundedRect()
        {
            //liveRectangleSize.Height = preferRectangleSize.Height * liveRectangleSize.Width / preferRectangleSize.Width;
            videoViewer.UpdateView();
        }

        private void configureToolStripButton_Click(object sender, EventArgs e)
        {
            ImageAustoScaleSettingForm form = new ImageAustoScaleSettingForm();
            form.Icon = Icon;
            form.MaximumWidth = maximumImageSize.Width;
            form.MaximumHeight = maximumImageSize.Height;
            if (form.ShowDialog() == System.Windows.Forms.DialogResult.OK)
            {
                maximumImageSize.Width = form.MaximumWidth;
                maximumImageSize.Height = form.MaximumHeight;
            }
        }

        private void aboutToolStripMenuItem_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Author: Chunde Huang@Washington State University\rWebSite: http://www.qtdot.org\rCopyright©2014\rVersion 2.2.0.2015.01.08");
        }

        private void visitOfficalWebsitToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Process.Start("http://www.qtdot.org/down_load/image-cropper-for-computer-vision");
        }

        private void traverseInputToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void openInputFolderToolStripButton_Click(object sender, EventArgs e)
        {
            FolderBrowserDialog dlg = new FolderBrowserDialog();
            if (sourceFolderToolStripTextBox.Text != "")
                dlg.SelectedPath = sourceFolderToolStripTextBox.Text;
            if(dlg.ShowDialog() == System.Windows.Forms.DialogResult.OK)
            {
                DialogResult ret = MessageBox.Show("Do you want the App to load all images include subfolders?", "Traverse Recursively?",MessageBoxButtons.YesNo);
                sourceImageList.Clear();
                sourceFolderToolStripTextBox.Text = dlg.SelectedPath;
                sourceImageIndex = 0;
                LoadSourceImage(dlg.SelectedPath, ret == System.Windows.Forms.DialogResult.Yes);
                UpdateSourceToolBarUI();
                LoadSourceImage();
            }
        }

        private void UpdateSourceToolBarUI()
        {
            bool flag = sourceImageList.Count != 0;
            previousImageToolStripButton.Enabled = flag && sourceImageIndex > 0;
            nextImageToolStripButton.Enabled = flag && sourceImageIndex < sourceImageList.Count - 1;
            sourceImageIndexToolStripTextBox.Text = sourceImageIndex.ToString() + "/" + sourceImageList.Count.ToString(); ;
            sourceImageIndexToolStripTextBox.Enabled = flag;
        }

        private void LoadSourceImage(string folder, bool recursive_flag)
        {
            //String[] files = Directory.GetFiles(folder, "*.*", System.IO.SearchOption.AllDirectories).Where(s => s.ToLower().EndsWith(".jpg") || s.ToLower().EndsWith(".txt") || s.ToLower().EndsWith(".asp"));
            String[] files = (Directory.EnumerateFiles(folder, "*.*", System.IO.SearchOption.TopDirectoryOnly).Where(s => s.EndsWith(".bmp") || s.EndsWith(".jpg") || s.EndsWith(".png"))).ToArray<string>();
            //String[] files = Directory.GetFiles(folder);
            if (files != null && files.Length > 0)
                sourceImageList.AddRange(files);
            if(recursive_flag)
            {
                string[] folders = Directory.GetDirectories(folder);
                if(folders != null && folders.Length > 0)
                {
                    for (int i = 0; i < folders.Length; i++)
                        LoadSourceImage(folders[i], recursive_flag);
                }


            }
        }

        private void previousImageToolStripButton_Click(object sender, EventArgs e)
        {
            LoadPreviousImage();
        }

        private void LoadPreviousImage()
        {
            sourceImageIndex--;
            LoadSourceImage();
        }

        private void LoadSourceImage()
        {
            if (sourceImageList.Count == 0)
                return;
            try
            {
                UpdateSourceToolBarUI();
                sourceImagePathToolStripLabel.Text = Path.GetFileName(sourceImageList[sourceImageIndex]);
               // Bitmap image = (Bitmap)Bitmap.FromFile(sourceImageList[sourceImageIndex]);
                videoViewer.LoadImage(sourceImageList[sourceImageIndex]);
               // videoViewer.RenderImage = image;
            }
            catch(Exception ex)
            {
                MessageBox.Show(ex.Message.ToString());
            }
        }

        private void nextImageToolStripButton_Click(object sender, EventArgs e)
        {
            LoadNextImage();
        }

        private void LoadNextImage()
        {
            sourceImageIndex++;
            LoadSourceImage();
        }

        private void sourceImageIndexToolStripTextBox_KeyUp(object sender, KeyEventArgs e)
        {
            try
            {
                string[] tks = sourceImageIndexToolStripTextBox.Text.Split('/');
                if (tks != null && tks.Length > 0)
                {
                    int index = int.Parse(tks[0]);
                    if (index >= 0 && index < sourceImageList.Count)
                    {
                        sourceImageIndex = index;
                        LoadSourceImage();
                    }
                }
            }
            catch(Exception)
            {
                
            }
        }

        private void lockSizeToolStripButton_Click(object sender, EventArgs e)
        {
            lockLiveRectSizeFlag = !lockLiveRectSizeFlag;
            lockSizeToolStripButton.BackColor = lockLiveRectSizeFlag ? Color.Red : configureToolStripButton.BackColor;
        }

    }
}
