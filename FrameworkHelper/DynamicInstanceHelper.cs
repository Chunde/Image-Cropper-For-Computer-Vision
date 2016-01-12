using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Reflection;
using System.IO;

namespace FrameworkHelper
{
    public class DynamicInstanceHelper
    {
        static public object DynamicCreateInstance(Type type)
        {
            // Assembly assem = Assembly.LoadFrom(p);
            return Assembly.GetAssembly(type).CreateInstance(type.FullName);
        }
        static public  Type[] SearchForRequiredInterfaceType(string[] p, Type type)
        {
            int n = 0;
            for (int i = 0; i < p.Length; i++)
                if (File.Exists(p[i]))
                    n++;
            if (n == 0)
                return null;
            Assembly[] assems = new Assembly[n];
            List<Type> typeList = new List<Type>();
            for (int i = 0; i < assems.Length; i++)
                assems[i] = Assembly.LoadFrom(p[i]);
            Type pType = type;
            for (int k = 0; k < assems.Length; k++)
            {
                Assembly assem = assems[k];
                Type[] types = assem.GetTypes();
                for (int i = 0; i < types.Length; i++)
                {
                    if (types[i].GetInterface(type.Name) == pType)//bleFrom(pType))
                    {
                        typeList.Add(types[i]);
                    }
                }
            }
           if (typeList.Count == 0)
           {
                return null;
           }
           return typeList.ToArray();
        }
        static public Type[] SearchForRequiredDeriveType(string[] p, Type type)
        {
            Assembly[] assems = new Assembly[p.Length];
            List<Type> typeList = new List<Type>();
            for (int i = 0; i < assems.Length; i++)
                assems[i] = Assembly.LoadFrom(p[i]);
            Type pType = type;
            for (int k = 0; k < assems.Length; k++)
            {
                Assembly assem = assems[k];
                Type[] types = assem.GetTypes();
                for (int i = 0; i < types.Length; i++)
                {
                   if (types[i].IsSubclassOf(pType))//bleFrom(pType))
                    {
                        typeList.Add(types[i]);
                    }
                }
            }
           if (typeList.Count == 0)
           {
                return null;
           }
           return typeList.ToArray();
        }
        static public bool HasInterface(Type classType, Type interfaceType)
        {
            if (classType.GetInterface(interfaceType.Name) == interfaceType)
                return true;
            return false;
        }
    }
}
