using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Windows.Forms;

namespace FeatureStudio
{
    public class TabPadding : NativeWindow
    {
        private const int WM_PAINT = 0xF;
        private const int TCM_FIRST  = 0x1300;
        private const int TCM_ADJUSTRECT = (TCM_FIRST + 40);
        private TabControl tabControl;

        public TabPadding(TabControl tc)
        {
            tabControl = tc;
            tabControl.Selected += new TabControlEventHandler(tabControl_Selected);
            AssignHandle(tc.Handle);
        }

        void tabControl_Selected(object sender, TabControlEventArgs e)
        {
            tabControl.Invalidate();
        }

        protected override void WndProc(ref Message m)
        {
            base.WndProc(ref m);

            if (m.Msg == TCM_ADJUSTRECT)
            {
                Rectangle rect = (Rectangle)m.GetLParam(typeof(Rectangle));
                string text = rect.ToString();
                rect.X -= 4;
                rect.Y += -1;
                rect.Width += 4;
                rect.Height += 2;
                Marshal.StructureToPtr(rect, m.LParam, true);
            }
        }
    }
}
