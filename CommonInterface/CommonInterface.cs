using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Drawing;
using System.Windows.Forms;

namespace CommonInterface
{
    public delegate void ImageRenderModeChange(ImageRenderMode curMode);
    public delegate void ImageChanged(String path,Bitmap image);
    public delegate void ImageZoomChange(double ratio);
    public enum ThreadArgTypes
    {
        None = 0,
        Message = 1,
        Progress = 2,
        Exception = 3,
        Values = 4,
        Started = 5,
        Resumed = 6,
        Suspended = 7,
        Stopped = 8
    }
    public enum ImageRenderMode
    {
        ModeNomal = 0,
        ModeZoom,
        ModeCenter,
        ModeStretch,
        ModeUser,
    }
    public class ThreadEventArgs : EventArgs
    {
        private string msg = "";
        private int min = 0;
        private ThreadArgTypes eventType = ThreadArgTypes.None;
        private Object others = null;

        public Object Others
        {
            get { return others; }
            set { others = value; }
        }
        public ThreadArgTypes EventType
        {
            get { return eventType; }
            set { eventType = value; }
        }
        public int Min
        {
            get { return min; }
            set { min = value; }
        }
        private int max = 0;

        public int Max
        {
            get { return max; }
            set { max = value; }
        }
        private int value = 0;

        public int Value
        {
            get { return this.value; }
            set { this.value = value; }
        }
        
        public string Msg
        {
            get { return msg; }
            set { msg = value; }
        }
    }
    public delegate void ThreadEventHandler(object sender, ThreadEventArgs e);
    public interface ISubForm
    {
          bool OpenFile(string fileName);
          bool SaveFile(string fileName);
          void SetParent(IMainForm p);
    }
    public interface IMainForm
    {
          void WriteLog(string logString);
          void ShowTip(string tipString);
          void AppendMessage(String msg);
    }
    public interface SampleInterface
    {
        void SampleEvent();
    }
    public interface IShowMessage
    {
        void ShowMessage(String msg);
    }
    public interface ISelectedChange
    {
        void UpdateSelections();
        void DoubleSelections(Object Sender,bool Selected);
    }
    public interface IFeatureManager
    {
        bool IsAvailabe();//determine weather the manager is ready
        int GetExitedItemCount();
        bool DeleteFeatureItem(int index);
        bool AddFeatureItem(String name, Byte[] Image, Byte[] Feature);
        bool AddFeature(String name, Byte[] Feature);
        bool UpdateFeatureItem(int index, String name, Byte[] Image, Byte[] Feature);
        bool GetFeatureItem(int index, out String name, out Byte[] Image, out Byte[] Feature);
        bool GetFeature(int index, out Byte[] Feature);
        double[] GetMainFeature(System.Drawing.Bitmap obj);
        void RemoveAllFeatureItems();
        void Reset();
    }
    public interface ILBPMode
    {
        Byte[] GetLBP(Bitmap[] inputImage);
        int[] GetHist(Bitmap[] inputImage);
        void GetHist(Bitmap[] inputImage,out int[] histbuf);
    }
    public interface IImageFeatureGenerator
    {
        void GetFeature(Bitmap[] inputImage, out double[] featureBuffer);
        void GetFeature(Bitmap[] inputImage, out int[] featureBuffer);
        void ConvertToDouble(int[] input, double[] output);
        void ConvertToInteger(double[] input, int[] output);
        void SetOption(object cmdStr);
        void Init();
        int OutBufferSize
        {
            get;
        }
        int ImageWidth
        {
            set;
            get;
        }
        int ImageHeight
        {
            set;
            get;
        }
        int BlockWidth
        {
            set;
            get;
        }
        int BlockHeight
        {
            set;
            get;
        }
        int MaxImageCount
        {
            get;
            set;
        }
       
    }
    public interface ISampleDataManager
    {
        
        int PositiveSampleID { get; }
        int NegativeSampleID { get; }
        void LoadFeatureDataFile(String path);
        int PositiveSampleCount { get; }
        int NegativeSampleCount { get; }
        int SampleFeatureLenght { get; }
        String[] AllClassTypeName { get; }
        String FeatureFilePath { get; set; }
        String ConfigurePositiveTypeName { set; }
        unsafe void GetPostiveSample(int index,IntPtr bufferAddress);
        unsafe void GetNegativeSample(int index, IntPtr bufferAddress);
        unsafe void LoadAllSampleToBuffer(int[] indexBufferAddress, double[] featureDataAddress);
    }
    public interface IClassifierModel
    {
        int VectorLenght { get; set; }
        void LoadModel(String path);
        void Release();
        int ClassCount { get; }
    }
    public interface IClassifier
    {
        bool IsQualifiedMode(IClassifierModel model);
        int DesiredClass { get; }
        String ModelFileFilter { get; }
        int VectorLenght { get; set; }
        double DecisionValue(IClassifierModel model, Double[] vectorBuffer);
        double Predict(IClassifierModel model, Double[] vectorBuffer);
        double PredictFromDecsionValue(IClassifierModel model,double decisionValue);

    }
    public interface ITrainer
    {
       
        void Init();
        void Start();
        void Suspend();
        void Resume();
        void Stop();
        void Release();
        int MaxSubClassifierCount { get; set; }
        double DesiredPrise { get; set; }
        double CurrentPrise{get;}
        int CurrentSubClassifierCount { get; }
        double SubProcessRatio { get; }
        double MainProcessRatio { get; }
        double TrainingPrise { set; get; }
        int CurrentHitOfPositveSample { get; }
        int CurrentHitOfNegativeSample { get; }
        void DumpStatus(String path);
        void LoadStatus(String path);
        ThreadEventHandler TrainerStatusEvent { set; get; }
        ISampleDataManager DataManager { set; get; }

        void SaveResult(String path);
    }
    public interface IIndicsAdapter
    {
        int FrontSideIndicsLenght { get; }
        int BackSizeIndicsLenght { get; }
        int[] InterIndics { get; set; }
        void LoadData(string p);
    }
    public interface IIFeatureScaleRequried
    {
        double ScaleSize { get; }
    }
    public interface IFastTrainerSwitch
    {
        Boolean FastTrainingSwitch { get; set; }
    }
    public interface IImageViewer
    {

      Bitmap RenderImage { set; get; }
      String DeviceName { get; }
      String Discription { get; }
      bool Visible { get; set; }
      void BeginInvoke(Delegate method);
    }
    public interface IImageViewerModeSwitch
    {
        ImageRenderMode RenderMode { set; get; }
        ImageRenderModeChange modeChangeDelegate { get; set; }
    }
    public interface IImageViewrCommon
    {
        void LoadImage(String path);
        void SaveImage(String path);
        void ShowImage(Bitmap image);
        void ClearBackGround(Color color);
        void Copy();
        void Paste();
    }
    public interface IFeatureViewer
    {
        void ShowFeature(double[] feature, int startIndex, int offset);
        unsafe void ShowFeature(double* feature, int len, int startIndex, int offset);
    }
    public interface IImageZoom
    {
        void ZoomIn();
        void ZoomOut();
        void Zoom(double ratio);
        ImageZoomChange ZoomChanged { set; get; }
    }
    public interface IOutputString
    {
        void ShowMessage(String msg);
        void ShowMessage(String msg, String typeToken);
        void ShowMessage(String msg, String TypeToken, String cmdToken);
        void ShowMessage(String msg, String typeToken, Icon icon);
    }
    public interface IFrameWorkAddIn
    {
        Guid AddInGuid {get;}
        IOutputString OutputWindows { set; get; }
        void OnCreateAddInTools();
        void OnCreateAddInMenu(ToolStripItemCollection topMenuItem);
        void OnCommand(String cmdToken);
    }
    public interface IImageProcessor
    {
        String ProcessorName { get; }
        String ProcessorDescription { get; }
        Bitmap ProcessorIcon { get;}
        Bitmap ProcessImage(Bitmap inputImage);
        Bitmap Undo();
    }
    public interface ILibraryInterface
    {

    }
    public interface IManager
    {

    }
    public interface IResourceCoodinator
    {

    }
    public enum ImagePoolStatus
    {
        Empty = 0,
        Full,
        Nomal,
    }
    public interface IImagePool
    {
        Bitmap PopPoolImage { get; }
        Bitmap PushPoolImage { set; }
        Bitmap PopImageAt(int index);
        Bitmap PushImageAt(int index);
        void ClearPool();
        int ImagePoolSize { get; }
        String ImagePoolName { get; set; }
        String ImagePoolDescription { get; set; }
        ImagePoolStatus ImagePoolStatus { get; }
    }
    public interface IFeatureDescriptor
    {
        String DescriptorName { get; set; }
        String DescriptorDescription { get; set; }
        Boolean GetFeature(Bitmap inputImage, ref double[] descriptor);
        Boolean GetFeature(String filePath, ref double[] descriptor);
        Boolean GetFeature(Object obj, ref double[] descriptor);
        int FeatureLength { get; }
        int ImageWidth { get; }
        int ImageHeight { get; }
    }
    public interface IFeatureClassifier
    {
        String ClassifierName { get; set; }
        String ClassifierDescription { get; set; }
        int FeatureLength { get; }
        double Predict(double[] feature);
    }
    public interface IObjectDetector
    {
        String DetectorName { get; set; }
        String DetectorDescription { get; set; }
        Rectangle[] DetectObject(Bitmap inputImage);
        Rectangle[] DetectObject(Object inputImage);
        bool IsReady();
    }
    public interface ILoadedFromFile
    {
        Boolean IsLoadFileOptional(Type interfaceType);
        Boolean Load(Type interfaceType,String file);
        Boolean IsLoaded(Type interfaceType);
        String[] Filter(Type interfaceType);
    }
    public interface IConfigurable
    {
        void ParseConfigure(String cmd);
        void Configure(Object cmdObject);

    }
    public interface ISVMLinerWeight
    {
        double[] GetLinerWeight();
    }
    public interface IControlFeature
    {
        Boolean GetControlFeature(Bitmap inputImage, ref double[] descriptor);
        Boolean GetControlFeature(String filePath, ref double[] descriptor);
        Boolean GetControlFeature(Object obj, ref double[] descriptor);
    }
    public interface IResponseThreshold
    {
        float ResponseThreshold { get; set; }
    }
    public enum ComplexComponent
    {
        RealComponent = 0,
        ImageComponent,
        MagnitudeComponent,
    }
    public unsafe interface ISignalFilter
    {
        /// <summary>
        /// Filter a input signal and transform to a specified output
        /// represented by ePara
        /// </summary>
        /// <param name="input">input data that will be prescessed by 
        /// the filter</param>
        /// <param name="output">output data transformed from the out put
        /// of the Signal filter specified by ePara</param>
        /// <param name="ePara">a enumable paramter specified the processing
        /// option</param>
        /// <returns>return true is processed successfully,false otherwise</returns>
        bool FilterSignal(double* input,double* output,int ePara);
        /// <summary>
        /// Retrieve the option list by strings
        /// </summary>
        String[] OptionsList { get; }
        String FilterName { get; }
        String FilterDescription { get; }
    }
    public unsafe interface IEnergeDistributionImage
    {
        double* GetEnergeImage();
    }
    public unsafe interface IGridDistributionImage
    {
        int* GetGridImage();
        void ResetGrid();
    }
    public unsafe interface IAnimationDecoder
    {
        bool Open(String file);
        bool Close(String file);
        int FrameNumber { get; }
        int FrameWidth { get; }
        int FrameHeight { get; }
        byte* DecodeFrameData(int index);
        byte* GetNextFrameData();
        int FrameIndex { get; set; }

    }
    public interface IGenericBinaryTrainer
    {
        String PositiveSamplePath { get; set; }
        String NegativeSamplePath { get; set; }
        String TargetModelPath { get; set; }
        Boolean SaveModel(String path);
        Boolean DumpStatus(String path);
        Boolean LoadStatus(String path);
        Boolean LoadSample();
        Boolean Train();
        Boolean Suspend();
        Boolean Resume();
        Boolean Stop();
        IFeatureDescriptor FeatureDescriptor{get;set;}
        double CurrentEps();
    }
    unsafe public interface IGenericFeatureDescriptor
    {
        int DescriptorSize { get; }
        String DescriptorName { get; }
        Boolean InvokeOption(Boolean bValidFlag);
        double* GetDoubleFeature(Bitmap inputImage);
        double* GetDoubleFeature(String imagePath);
        float* GetFloatFeature(Bitmap inputImage);
        float* GetFloatFeature(String imagePath);
    }
    public interface ISampleDoubleShot
    {
        double DoublePropertity { get; set; }
        String PropertyName { get; }
    }
    public interface IHistogram
    {
        int[] Histogram { get; }
        void ClearHistogram();
        Boolean HistogramSwitchOn { get; set; }
    }
    public interface IGroupOutput
    {
        Boolean EnableGroup { get; set; }
    }
    public interface INomalizorSwitch
    {
        Boolean EnableNomalizor { get; set; }
    }
    public interface IControlModelSupport
    {
        Boolean EnableControlModel { get; set; }
        Boolean MergeIntoOutput { get; set; }
        Boolean LoadControlModel(String modelPath);
        Rectangle[] GetControlResult();
    }
}
