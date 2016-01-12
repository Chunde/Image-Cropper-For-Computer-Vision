using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace BasicSupport
{
    public partial class ShowImageForm : Form
    {
        public ShowImageForm()
        {
            InitializeComponent();
        }
        public Bitmap DisplayImage
        {
            set
            {
                if (pictureBox.Image != null)
                    pictureBox.Image.Dispose();
                pictureBox.Image = new Bitmap(value);
            }
            get
            {
                return (Bitmap)pictureBox.Image;
            }
        }
    }
}
