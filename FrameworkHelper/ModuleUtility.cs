using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Reflection;

namespace FrameworkHelper
{
    public class ModuleUtility
    {
        public static bool IsX64Module(Object asm)
        {
            PortableExecutableKinds pk;// = new PortableExecutableKinds();
            ImageFileMachine ifm;
            asm.GetType().Module.GetPEKind(out pk,out ifm);
            if (ifm == ImageFileMachine.IA64)
            {
                return true;
            }
            return false;
        }
    }
}
