namespace CoolControlEx
{
    partial class DirectXViewer
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

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.contextMenuStrip = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.saveAsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.contextMenuStrip.SuspendLayout();
            this.SuspendLayout();
            // 
            // contextMenuStrip
            // 
            this.contextMenuStrip.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.saveAsToolStripMenuItem});
            this.contextMenuStrip.Name = "contextMenuStrip";
            this.contextMenuStrip.Size = new System.Drawing.Size(125, 26);
            // 
            // saveAsToolStripMenuItem
            // 
            this.saveAsToolStripMenuItem.Name = "saveAsToolStripMenuItem";
            this.saveAsToolStripMenuItem.Size = new System.Drawing.Size(152, 22);
            this.saveAsToolStripMenuItem.Text = "Save as...";
            this.saveAsToolStripMenuItem.Click += new System.EventHandler(this.saveAsToolStripMenuItem_Click);
            // 
            // DirectXViewer
            // 
            this.AllowDrop = true;
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ContextMenuStrip = this.contextMenuStrip;
            this.Name = "DirectXViewer";
            this.Size = new System.Drawing.Size(160, 153);
            this.Load += new System.EventHandler(this.DirectXViewer_Load);
            this.DragDrop += new System.Windows.Forms.DragEventHandler(this.DirectXViewer_DragDrop);
            this.DragEnter += new System.Windows.Forms.DragEventHandler(this.DirectXViewer_DragEnter);
            this.DragOver += new System.Windows.Forms.DragEventHandler(this.DirectXViewer_DragOver);
            this.DragLeave += new System.EventHandler(this.DirectXViewer_DragLeave);
            this.Paint += new System.Windows.Forms.PaintEventHandler(this.DirectXViewer_Paint);
            this.MouseDown += new System.Windows.Forms.MouseEventHandler(this.DirectXViewer_MouseDown);
            this.MouseMove += new System.Windows.Forms.MouseEventHandler(this.DirectXViewer_MouseMove);
            this.MouseUp += new System.Windows.Forms.MouseEventHandler(this.DirectXViewer_MouseUp);
            this.Resize += new System.EventHandler(this.DirectXViewer_Resize);
            this.contextMenuStrip.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.ContextMenuStrip contextMenuStrip;
        private System.Windows.Forms.ToolStripMenuItem saveAsToolStripMenuItem;




    }
}
