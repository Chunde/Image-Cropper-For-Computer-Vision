namespace FeatureStudio
{
    partial class ImageCropper
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(ImageCropper));
            this.toolStripContainer = new System.Windows.Forms.ToolStripContainer();
            this.statusStrip = new System.Windows.Forms.StatusStrip();
            this.readyStatusLabel = new System.Windows.Forms.ToolStripStatusLabel();
            this.imageInfoToolStripStatusLabel = new System.Windows.Forms.ToolStripStatusLabel();
            this.mouseInfoToolStripStatusLabel = new System.Windows.Forms.ToolStripStatusLabel();
            this.mainSplitContainer = new System.Windows.Forms.SplitContainer();
            this.mainTabControl = new System.Windows.Forms.TabControl();
            this.videoMonitorTabPage = new System.Windows.Forms.TabPage();
            this.directXViewPanel = new System.Windows.Forms.Panel();
            this.viewerBasePanel = new System.Windows.Forms.Panel();
            this.directXViewSplitContainer = new System.Windows.Forms.SplitContainer();
            this.mainImageList = new System.Windows.Forms.ImageList(this.components);
            this.mainMenuStrip = new System.Windows.Forms.MenuStrip();
            this.viewToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.toolBarsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.helpToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.aboutToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.visitOfficalWebsitToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.standarImageToolStrip = new System.Windows.Forms.ToolStrip();
            this.toolStripSeparator = new System.Windows.Forms.ToolStripSeparator();
            this.toolStripSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.toolStripLabel1 = new System.Windows.Forms.ToolStripLabel();
            this.preferWidthToolStripTextBox = new System.Windows.Forms.ToolStripTextBox();
            this.toolStripLabel2 = new System.Windows.Forms.ToolStripLabel();
            this.preferHeightToolStripTextBox = new System.Windows.Forms.ToolStripTextBox();
            this.sourceImageToolStrip = new System.Windows.Forms.ToolStrip();
            this.toolStripLabel3 = new System.Windows.Forms.ToolStripLabel();
            this.sourceFolderToolStripTextBox = new System.Windows.Forms.ToolStripTextBox();
            this.toolStripSeparator2 = new System.Windows.Forms.ToolStripSeparator();
            this.sourceImageIndexToolStripTextBox = new System.Windows.Forms.ToolStripTextBox();
            this.sourceImagePathToolStripLabel = new System.Windows.Forms.ToolStripLabel();
            this.liveToolTip = new System.Windows.Forms.ToolTip(this.components);
            this.videocontextMenuStrip = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.showLiveRectangeToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.saveSubImageToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripMenuItem13 = new System.Windows.Forms.ToolStripSeparator();
            this.setSubImageOutputPathToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.errorProvider = new System.Windows.Forms.ErrorProvider(this.components);
            this.miniToolStrip = new System.Windows.Forms.ToolStrip();
            this.toolStripSeparator3 = new System.Windows.Forms.ToolStripSeparator();
            this.imgeOpenToolStripButton = new System.Windows.Forms.ToolStripButton();
            this.imageSaveToolStripButton = new System.Windows.Forms.ToolStripButton();
            this.imageCopyToolStripButton = new System.Windows.Forms.ToolStripButton();
            this.imagePasteToolStripButton = new System.Windows.Forms.ToolStripButton();
            this.backgroundColorToolStripButton = new System.Windows.Forms.ToolStripButton();
            this.configureToolStripButton = new System.Windows.Forms.ToolStripButton();
            this.openInputFolderToolStripButton = new System.Windows.Forms.ToolStripButton();
            this.previousImageToolStripButton = new System.Windows.Forms.ToolStripButton();
            this.nextImageToolStripButton = new System.Windows.Forms.ToolStripButton();
            this.lockSizeToolStripButton = new System.Windows.Forms.ToolStripButton();
            this.toolStripContainer.BottomToolStripPanel.SuspendLayout();
            this.toolStripContainer.ContentPanel.SuspendLayout();
            this.toolStripContainer.TopToolStripPanel.SuspendLayout();
            this.toolStripContainer.SuspendLayout();
            this.statusStrip.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.mainSplitContainer)).BeginInit();
            this.mainSplitContainer.Panel1.SuspendLayout();
            this.mainSplitContainer.SuspendLayout();
            this.mainTabControl.SuspendLayout();
            this.videoMonitorTabPage.SuspendLayout();
            this.directXViewPanel.SuspendLayout();
            this.viewerBasePanel.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.directXViewSplitContainer)).BeginInit();
            this.directXViewSplitContainer.SuspendLayout();
            this.mainMenuStrip.SuspendLayout();
            this.standarImageToolStrip.SuspendLayout();
            this.sourceImageToolStrip.SuspendLayout();
            this.videocontextMenuStrip.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.errorProvider)).BeginInit();
            this.SuspendLayout();
            // 
            // toolStripContainer
            // 
            // 
            // toolStripContainer.BottomToolStripPanel
            // 
            this.toolStripContainer.BottomToolStripPanel.Controls.Add(this.statusStrip);
            // 
            // toolStripContainer.ContentPanel
            // 
            resources.ApplyResources(this.toolStripContainer.ContentPanel, "toolStripContainer.ContentPanel");
            this.toolStripContainer.ContentPanel.Controls.Add(this.mainSplitContainer);
            resources.ApplyResources(this.toolStripContainer, "toolStripContainer");
            this.toolStripContainer.Name = "toolStripContainer";
            // 
            // toolStripContainer.TopToolStripPanel
            // 
            this.toolStripContainer.TopToolStripPanel.Controls.Add(this.mainMenuStrip);
            this.toolStripContainer.TopToolStripPanel.Controls.Add(this.standarImageToolStrip);
            this.toolStripContainer.TopToolStripPanel.Controls.Add(this.sourceImageToolStrip);
            // 
            // statusStrip
            // 
            resources.ApplyResources(this.statusStrip, "statusStrip");
            this.statusStrip.GripMargin = new System.Windows.Forms.Padding(0);
            this.statusStrip.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.readyStatusLabel,
            this.imageInfoToolStripStatusLabel,
            this.mouseInfoToolStripStatusLabel});
            this.statusStrip.Name = "statusStrip";
            // 
            // readyStatusLabel
            // 
            this.readyStatusLabel.Name = "readyStatusLabel";
            resources.ApplyResources(this.readyStatusLabel, "readyStatusLabel");
            // 
            // imageInfoToolStripStatusLabel
            // 
            this.imageInfoToolStripStatusLabel.DoubleClickEnabled = true;
            this.imageInfoToolStripStatusLabel.Name = "imageInfoToolStripStatusLabel";
            resources.ApplyResources(this.imageInfoToolStripStatusLabel, "imageInfoToolStripStatusLabel");
            // 
            // mouseInfoToolStripStatusLabel
            // 
            this.mouseInfoToolStripStatusLabel.Name = "mouseInfoToolStripStatusLabel";
            resources.ApplyResources(this.mouseInfoToolStripStatusLabel, "mouseInfoToolStripStatusLabel");
            // 
            // mainSplitContainer
            // 
            resources.ApplyResources(this.mainSplitContainer, "mainSplitContainer");
            this.mainSplitContainer.Name = "mainSplitContainer";
            // 
            // mainSplitContainer.Panel1
            // 
            this.mainSplitContainer.Panel1.Controls.Add(this.mainTabControl);
            // 
            // mainSplitContainer.Panel2
            // 
            this.mainSplitContainer.Panel2.SizeChanged += new System.EventHandler(this.splitContainer1_Panel2_SizeChanged);
            this.mainSplitContainer.Panel2Collapsed = true;
            // 
            // mainTabControl
            // 
            this.mainTabControl.Controls.Add(this.videoMonitorTabPage);
            resources.ApplyResources(this.mainTabControl, "mainTabControl");
            this.mainTabControl.ImageList = this.mainImageList;
            this.mainTabControl.Name = "mainTabControl";
            this.mainTabControl.SelectedIndex = 0;
            // 
            // videoMonitorTabPage
            // 
            this.videoMonitorTabPage.Controls.Add(this.directXViewPanel);
            resources.ApplyResources(this.videoMonitorTabPage, "videoMonitorTabPage");
            this.videoMonitorTabPage.Name = "videoMonitorTabPage";
            this.videoMonitorTabPage.UseVisualStyleBackColor = true;
            // 
            // directXViewPanel
            // 
            this.directXViewPanel.Controls.Add(this.viewerBasePanel);
            resources.ApplyResources(this.directXViewPanel, "directXViewPanel");
            this.directXViewPanel.Name = "directXViewPanel";
            // 
            // viewerBasePanel
            // 
            this.viewerBasePanel.Controls.Add(this.directXViewSplitContainer);
            resources.ApplyResources(this.viewerBasePanel, "viewerBasePanel");
            this.viewerBasePanel.Name = "viewerBasePanel";
            // 
            // directXViewSplitContainer
            // 
            resources.ApplyResources(this.directXViewSplitContainer, "directXViewSplitContainer");
            this.directXViewSplitContainer.Name = "directXViewSplitContainer";
            // 
            // directXViewSplitContainer.Panel1
            // 
            this.directXViewSplitContainer.Panel1.Cursor = System.Windows.Forms.Cursors.Cross;
            this.directXViewSplitContainer.Panel2Collapsed = true;
            // 
            // mainImageList
            // 
            this.mainImageList.ImageStream = ((System.Windows.Forms.ImageListStreamer)(resources.GetObject("mainImageList.ImageStream")));
            this.mainImageList.TransparentColor = System.Drawing.Color.Transparent;
            this.mainImageList.Images.SetKeyName(0, "Connect.png");
            this.mainImageList.Images.SetKeyName(1, "DrawEyes.PNG");
            this.mainImageList.Images.SetKeyName(2, "ksirtet.png");
            // 
            // mainMenuStrip
            // 
            resources.ApplyResources(this.mainMenuStrip, "mainMenuStrip");
            this.mainMenuStrip.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.viewToolStripMenuItem,
            this.helpToolStripMenuItem});
            this.mainMenuStrip.Name = "mainMenuStrip";
            this.mainMenuStrip.VisibleChanged += new System.EventHandler(this.mainMenuStrip_VisibleChanged);
            // 
            // viewToolStripMenuItem
            // 
            this.viewToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.toolBarsToolStripMenuItem});
            this.viewToolStripMenuItem.Name = "viewToolStripMenuItem";
            resources.ApplyResources(this.viewToolStripMenuItem, "viewToolStripMenuItem");
            // 
            // toolBarsToolStripMenuItem
            // 
            this.toolBarsToolStripMenuItem.Name = "toolBarsToolStripMenuItem";
            resources.ApplyResources(this.toolBarsToolStripMenuItem, "toolBarsToolStripMenuItem");
            this.toolBarsToolStripMenuItem.DropDownOpened += new System.EventHandler(this.toolBarsToolStripMenuItem_DropDownOpened);
            // 
            // helpToolStripMenuItem
            // 
            this.helpToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.aboutToolStripMenuItem,
            this.visitOfficalWebsitToolStripMenuItem});
            this.helpToolStripMenuItem.Name = "helpToolStripMenuItem";
            resources.ApplyResources(this.helpToolStripMenuItem, "helpToolStripMenuItem");
            // 
            // aboutToolStripMenuItem
            // 
            this.aboutToolStripMenuItem.Name = "aboutToolStripMenuItem";
            resources.ApplyResources(this.aboutToolStripMenuItem, "aboutToolStripMenuItem");
            this.aboutToolStripMenuItem.Click += new System.EventHandler(this.aboutToolStripMenuItem_Click);
            // 
            // visitOfficalWebsitToolStripMenuItem
            // 
            this.visitOfficalWebsitToolStripMenuItem.Name = "visitOfficalWebsitToolStripMenuItem";
            resources.ApplyResources(this.visitOfficalWebsitToolStripMenuItem, "visitOfficalWebsitToolStripMenuItem");
            this.visitOfficalWebsitToolStripMenuItem.Click += new System.EventHandler(this.visitOfficalWebsitToolStripMenuItem_Click);
            // 
            // standarImageToolStrip
            // 
            resources.ApplyResources(this.standarImageToolStrip, "standarImageToolStrip");
            this.standarImageToolStrip.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.imgeOpenToolStripButton,
            this.imageSaveToolStripButton,
            this.toolStripSeparator,
            this.imageCopyToolStripButton,
            this.imagePasteToolStripButton,
            this.backgroundColorToolStripButton,
            this.toolStripSeparator1,
            this.toolStripLabel1,
            this.preferWidthToolStripTextBox,
            this.toolStripLabel2,
            this.preferHeightToolStripTextBox,
            this.lockSizeToolStripButton,
            this.toolStripSeparator3,
            this.configureToolStripButton});
            this.standarImageToolStrip.Name = "standarImageToolStrip";
            this.standarImageToolStrip.ItemClicked += new System.Windows.Forms.ToolStripItemClickedEventHandler(this.standarImageToolStrip_ItemClicked);
            // 
            // toolStripSeparator
            // 
            this.toolStripSeparator.Name = "toolStripSeparator";
            resources.ApplyResources(this.toolStripSeparator, "toolStripSeparator");
            // 
            // toolStripSeparator1
            // 
            this.toolStripSeparator1.Name = "toolStripSeparator1";
            resources.ApplyResources(this.toolStripSeparator1, "toolStripSeparator1");
            // 
            // toolStripLabel1
            // 
            this.toolStripLabel1.Name = "toolStripLabel1";
            resources.ApplyResources(this.toolStripLabel1, "toolStripLabel1");
            // 
            // preferWidthToolStripTextBox
            // 
            this.preferWidthToolStripTextBox.Name = "preferWidthToolStripTextBox";
            resources.ApplyResources(this.preferWidthToolStripTextBox, "preferWidthToolStripTextBox");
            this.preferWidthToolStripTextBox.TextChanged += new System.EventHandler(this.preferWidthToolStripTextBox_TextChanged);
            // 
            // toolStripLabel2
            // 
            this.toolStripLabel2.Name = "toolStripLabel2";
            resources.ApplyResources(this.toolStripLabel2, "toolStripLabel2");
            // 
            // preferHeightToolStripTextBox
            // 
            this.preferHeightToolStripTextBox.Name = "preferHeightToolStripTextBox";
            resources.ApplyResources(this.preferHeightToolStripTextBox, "preferHeightToolStripTextBox");
            this.preferHeightToolStripTextBox.TextChanged += new System.EventHandler(this.preferHeightToolStripTextBox_TextChanged);
            // 
            // sourceImageToolStrip
            // 
            resources.ApplyResources(this.sourceImageToolStrip, "sourceImageToolStrip");
            this.sourceImageToolStrip.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.toolStripLabel3,
            this.sourceFolderToolStripTextBox,
            this.openInputFolderToolStripButton,
            this.toolStripSeparator2,
            this.previousImageToolStripButton,
            this.sourceImageIndexToolStripTextBox,
            this.nextImageToolStripButton,
            this.sourceImagePathToolStripLabel});
            this.sourceImageToolStrip.Name = "sourceImageToolStrip";
            // 
            // toolStripLabel3
            // 
            this.toolStripLabel3.Name = "toolStripLabel3";
            resources.ApplyResources(this.toolStripLabel3, "toolStripLabel3");
            // 
            // sourceFolderToolStripTextBox
            // 
            this.sourceFolderToolStripTextBox.Name = "sourceFolderToolStripTextBox";
            this.sourceFolderToolStripTextBox.ReadOnly = true;
            resources.ApplyResources(this.sourceFolderToolStripTextBox, "sourceFolderToolStripTextBox");
            // 
            // toolStripSeparator2
            // 
            this.toolStripSeparator2.Name = "toolStripSeparator2";
            resources.ApplyResources(this.toolStripSeparator2, "toolStripSeparator2");
            // 
            // sourceImageIndexToolStripTextBox
            // 
            resources.ApplyResources(this.sourceImageIndexToolStripTextBox, "sourceImageIndexToolStripTextBox");
            this.sourceImageIndexToolStripTextBox.Name = "sourceImageIndexToolStripTextBox";
            this.sourceImageIndexToolStripTextBox.KeyUp += new System.Windows.Forms.KeyEventHandler(this.sourceImageIndexToolStripTextBox_KeyUp);
            // 
            // sourceImagePathToolStripLabel
            // 
            this.sourceImagePathToolStripLabel.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Text;
            this.sourceImagePathToolStripLabel.Name = "sourceImagePathToolStripLabel";
            resources.ApplyResources(this.sourceImagePathToolStripLabel, "sourceImagePathToolStripLabel");
            // 
            // videocontextMenuStrip
            // 
            this.videocontextMenuStrip.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.showLiveRectangeToolStripMenuItem,
            this.saveSubImageToolStripMenuItem,
            this.toolStripMenuItem13,
            this.setSubImageOutputPathToolStripMenuItem});
            this.videocontextMenuStrip.Name = "videocontextMenuStrip";
            resources.ApplyResources(this.videocontextMenuStrip, "videocontextMenuStrip");
            this.videocontextMenuStrip.Opening += new System.ComponentModel.CancelEventHandler(this.videocontextMenuStrip_Opening);
            this.videocontextMenuStrip.ItemClicked += new System.Windows.Forms.ToolStripItemClickedEventHandler(this.videocontextMenuStrip_ItemClicked);
            // 
            // showLiveRectangeToolStripMenuItem
            // 
            this.showLiveRectangeToolStripMenuItem.Name = "showLiveRectangeToolStripMenuItem";
            resources.ApplyResources(this.showLiveRectangeToolStripMenuItem, "showLiveRectangeToolStripMenuItem");
            // 
            // saveSubImageToolStripMenuItem
            // 
            this.saveSubImageToolStripMenuItem.Name = "saveSubImageToolStripMenuItem";
            resources.ApplyResources(this.saveSubImageToolStripMenuItem, "saveSubImageToolStripMenuItem");
            // 
            // toolStripMenuItem13
            // 
            this.toolStripMenuItem13.Name = "toolStripMenuItem13";
            resources.ApplyResources(this.toolStripMenuItem13, "toolStripMenuItem13");
            // 
            // setSubImageOutputPathToolStripMenuItem
            // 
            this.setSubImageOutputPathToolStripMenuItem.Name = "setSubImageOutputPathToolStripMenuItem";
            resources.ApplyResources(this.setSubImageOutputPathToolStripMenuItem, "setSubImageOutputPathToolStripMenuItem");
            // 
            // errorProvider
            // 
            this.errorProvider.ContainerControl = this;
            // 
            // miniToolStrip
            // 
            this.miniToolStrip.CanOverflow = false;
            this.miniToolStrip.GripStyle = System.Windows.Forms.ToolStripGripStyle.Hidden;
            resources.ApplyResources(this.miniToolStrip, "miniToolStrip");
            this.miniToolStrip.Name = "miniToolStrip";
            // 
            // toolStripSeparator3
            // 
            this.toolStripSeparator3.Name = "toolStripSeparator3";
            resources.ApplyResources(this.toolStripSeparator3, "toolStripSeparator3");
            // 
            // imgeOpenToolStripButton
            // 
            this.imgeOpenToolStripButton.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            resources.ApplyResources(this.imgeOpenToolStripButton, "imgeOpenToolStripButton");
            this.imgeOpenToolStripButton.Name = "imgeOpenToolStripButton";
            // 
            // imageSaveToolStripButton
            // 
            this.imageSaveToolStripButton.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            resources.ApplyResources(this.imageSaveToolStripButton, "imageSaveToolStripButton");
            this.imageSaveToolStripButton.Name = "imageSaveToolStripButton";
            // 
            // imageCopyToolStripButton
            // 
            this.imageCopyToolStripButton.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            resources.ApplyResources(this.imageCopyToolStripButton, "imageCopyToolStripButton");
            this.imageCopyToolStripButton.Name = "imageCopyToolStripButton";
            // 
            // imagePasteToolStripButton
            // 
            this.imagePasteToolStripButton.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            resources.ApplyResources(this.imagePasteToolStripButton, "imagePasteToolStripButton");
            this.imagePasteToolStripButton.Name = "imagePasteToolStripButton";
            // 
            // backgroundColorToolStripButton
            // 
            this.backgroundColorToolStripButton.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.backgroundColorToolStripButton.Image = global::FeatureStudio.Properties.Resources.Sample;
            resources.ApplyResources(this.backgroundColorToolStripButton, "backgroundColorToolStripButton");
            this.backgroundColorToolStripButton.Name = "backgroundColorToolStripButton";
            // 
            // configureToolStripButton
            // 
            this.configureToolStripButton.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.configureToolStripButton.Image = global::FeatureStudio.Properties.Resources.config;
            resources.ApplyResources(this.configureToolStripButton, "configureToolStripButton");
            this.configureToolStripButton.Name = "configureToolStripButton";
            this.configureToolStripButton.Click += new System.EventHandler(this.configureToolStripButton_Click);
            // 
            // openInputFolderToolStripButton
            // 
            this.openInputFolderToolStripButton.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.openInputFolderToolStripButton.Image = global::FeatureStudio.Properties.Resources.folder_blue;
            resources.ApplyResources(this.openInputFolderToolStripButton, "openInputFolderToolStripButton");
            this.openInputFolderToolStripButton.Name = "openInputFolderToolStripButton";
            this.openInputFolderToolStripButton.Click += new System.EventHandler(this.openInputFolderToolStripButton_Click);
            // 
            // previousImageToolStripButton
            // 
            this.previousImageToolStripButton.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            resources.ApplyResources(this.previousImageToolStripButton, "previousImageToolStripButton");
            this.previousImageToolStripButton.Image = global::FeatureStudio.Properties.Resources.bindingNavigatorMoveFirstItem_Image;
            this.previousImageToolStripButton.Name = "previousImageToolStripButton";
            this.previousImageToolStripButton.Click += new System.EventHandler(this.previousImageToolStripButton_Click);
            // 
            // nextImageToolStripButton
            // 
            this.nextImageToolStripButton.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            resources.ApplyResources(this.nextImageToolStripButton, "nextImageToolStripButton");
            this.nextImageToolStripButton.Image = global::FeatureStudio.Properties.Resources.bindingNavigatorMoveLastItem1;
            this.nextImageToolStripButton.Name = "nextImageToolStripButton";
            this.nextImageToolStripButton.Click += new System.EventHandler(this.nextImageToolStripButton_Click);
            // 
            // lockSizeToolStripButton
            // 
            this.lockSizeToolStripButton.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.lockSizeToolStripButton.Image = global::FeatureStudio.Properties.Resources._lock;
            resources.ApplyResources(this.lockSizeToolStripButton, "lockSizeToolStripButton");
            this.lockSizeToolStripButton.Name = "lockSizeToolStripButton";
            this.lockSizeToolStripButton.Click += new System.EventHandler(this.lockSizeToolStripButton_Click);
            // 
            // ImageCropper
            // 
            this.AllowDrop = true;
            resources.ApplyResources(this, "$this");
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.toolStripContainer);
            this.MainMenuStrip = this.mainMenuStrip;
            this.Name = "ImageCropper";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.ExpressionDetector_FormClosing);
            this.toolStripContainer.BottomToolStripPanel.ResumeLayout(false);
            this.toolStripContainer.BottomToolStripPanel.PerformLayout();
            this.toolStripContainer.ContentPanel.ResumeLayout(false);
            this.toolStripContainer.TopToolStripPanel.ResumeLayout(false);
            this.toolStripContainer.TopToolStripPanel.PerformLayout();
            this.toolStripContainer.ResumeLayout(false);
            this.toolStripContainer.PerformLayout();
            this.statusStrip.ResumeLayout(false);
            this.statusStrip.PerformLayout();
            this.mainSplitContainer.Panel1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.mainSplitContainer)).EndInit();
            this.mainSplitContainer.ResumeLayout(false);
            this.mainTabControl.ResumeLayout(false);
            this.videoMonitorTabPage.ResumeLayout(false);
            this.directXViewPanel.ResumeLayout(false);
            this.viewerBasePanel.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.directXViewSplitContainer)).EndInit();
            this.directXViewSplitContainer.ResumeLayout(false);
            this.mainMenuStrip.ResumeLayout(false);
            this.mainMenuStrip.PerformLayout();
            this.standarImageToolStrip.ResumeLayout(false);
            this.standarImageToolStrip.PerformLayout();
            this.sourceImageToolStrip.ResumeLayout(false);
            this.sourceImageToolStrip.PerformLayout();
            this.videocontextMenuStrip.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.errorProvider)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.ToolStripContainer toolStripContainer;
        private System.Windows.Forms.ToolStrip standarImageToolStrip;
        private System.Windows.Forms.ToolStripButton imgeOpenToolStripButton;
        private System.Windows.Forms.ToolStripButton imageSaveToolStripButton;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator;
        private System.Windows.Forms.ToolStripButton imageCopyToolStripButton;
        private System.Windows.Forms.ToolStripButton imagePasteToolStripButton;
        private System.Windows.Forms.ToolStripButton backgroundColorToolStripButton;
        private System.Windows.Forms.ToolTip liveToolTip;
        private System.Windows.Forms.SplitContainer mainSplitContainer;
        private System.Windows.Forms.ContextMenuStrip videocontextMenuStrip;
        private System.Windows.Forms.ToolStripMenuItem showLiveRectangeToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem saveSubImageToolStripMenuItem;
        private System.Windows.Forms.ImageList mainImageList;
        private System.Windows.Forms.ErrorProvider errorProvider;
        private System.Windows.Forms.ToolStripSeparator toolStripMenuItem13;
        private System.Windows.Forms.ToolStripMenuItem setSubImageOutputPathToolStripMenuItem;
        private System.Windows.Forms.MenuStrip mainMenuStrip;
        private System.Windows.Forms.ToolStripMenuItem viewToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem toolBarsToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem helpToolStripMenuItem;
        private System.Windows.Forms.TabControl mainTabControl;
        private System.Windows.Forms.TabPage videoMonitorTabPage;
        private System.Windows.Forms.Panel directXViewPanel;
        private System.Windows.Forms.Panel viewerBasePanel;
        private System.Windows.Forms.SplitContainer directXViewSplitContainer;
        private System.Windows.Forms.ToolStrip miniToolStrip;
        private System.Windows.Forms.StatusStrip statusStrip;
        private System.Windows.Forms.ToolStripStatusLabel readyStatusLabel;
        private System.Windows.Forms.ToolStripStatusLabel imageInfoToolStripStatusLabel;
        private System.Windows.Forms.ToolStripStatusLabel mouseInfoToolStripStatusLabel;
        private System.Windows.Forms.ToolStripMenuItem aboutToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem visitOfficalWebsitToolStripMenuItem;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator1;
        private System.Windows.Forms.ToolStripLabel toolStripLabel1;
        private System.Windows.Forms.ToolStripTextBox preferWidthToolStripTextBox;
        private System.Windows.Forms.ToolStripLabel toolStripLabel2;
        private System.Windows.Forms.ToolStripTextBox preferHeightToolStripTextBox;
        private System.Windows.Forms.ToolStripButton configureToolStripButton;
        private System.Windows.Forms.ToolStrip sourceImageToolStrip;
        private System.Windows.Forms.ToolStripLabel toolStripLabel3;
        private System.Windows.Forms.ToolStripTextBox sourceFolderToolStripTextBox;
        private System.Windows.Forms.ToolStripButton openInputFolderToolStripButton;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator2;
        private System.Windows.Forms.ToolStripButton previousImageToolStripButton;
        private System.Windows.Forms.ToolStripButton nextImageToolStripButton;
        private System.Windows.Forms.ToolStripLabel sourceImagePathToolStripLabel;
        private System.Windows.Forms.ToolStripTextBox sourceImageIndexToolStripTextBox;
        private System.Windows.Forms.ToolStripButton lockSizeToolStripButton;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator3;

    }
}

