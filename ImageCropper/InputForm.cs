using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace SampleCropor
{
    public partial class InputForm : Form
    {
        public InputForm()
        {
            InitializeComponent();
        }
        double inputRatio = 0.5;

        public double InputRatio
        {
            get { return inputRatio; }
            set { inputRatio = value; }
        }
        public string InputString
        {
            get { return inputTextBox.Text; }
            set { inputTextBox.Text = value; }
        }
        public string InputTitle
        {
            get { return this.Text; }
            set { this.Text = value; }
        }
        private void inputTextBox_TextChanged(object sender, EventArgs e)
        {
            try
            {
                inputRatio = double.Parse(inputTextBox.Text);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.ToString());
            }
        }

        private void inputTextBox_MouseClick(object sender, MouseEventArgs e)
        {
            inputTextBox.SelectAll();
        }
    }
}
