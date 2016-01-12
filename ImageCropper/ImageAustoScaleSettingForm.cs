using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace FeatureStudio
{
    public partial class ImageAustoScaleSettingForm : Form
    {
        public ImageAustoScaleSettingForm()
        {
            InitializeComponent();
        }

        public int MaximumWidth
        {
            get
            {
                return int.Parse(widthTextBox.Text);
            }
            set
            {
                widthTextBox.Text = value.ToString();
            }
        }
        public int MaximumHeight
        {
            get
            {
                return int.Parse(heightTextBox.Text);
            }
            set
            {
                heightTextBox.Text = value.ToString();
            }
        }
    }
}
