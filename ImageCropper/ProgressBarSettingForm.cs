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
    public partial class ProgressBarSettingForm : Form
    {
        public ProgressBarSettingForm()
        {
            InitializeComponent();
        }
      
        public float MaximumValue
        {
            get
            {
                try
                {
                    return float.Parse(textBox2.Text);
                }
                catch (System.Exception ex)
                {
                    MessageBox.Show(ex.Message.ToString());
                }
                return 0;
            }
            set
            {
                textBox2.Text = value.ToString();
            }
        }
        public float ResponseValue
        {
            get
            {
                try
                {
                    return float.Parse(textBox3.Text);
                }
                catch (System.Exception ex)
                {
                    MessageBox.Show(ex.Message.ToString());
                }
                return 0;
            }
            set
            {
                textBox3.Text = value.ToString();
            }
        }

        private void textBox2_VisibleChanged(object sender, EventArgs e)
        {
            textBox3.Focus();
            //textBox3
            textBox3.SelectAll();
        }
    }
}
