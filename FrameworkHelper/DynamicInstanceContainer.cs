using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FrameworkHelper
{
   public class DynamicInstanceContainer
    {
       List<Type> _objectList = new List<Type>();

       public Type[] ObjectList
        {
            get { return _objectList.ToArray(); }
        }
        public void AddObject(Type obj)
        {
            String str = obj.ToString();
            for (int i = 0; i < _objectList.Count; i ++ )
            {
                if (_objectList[i] == obj || _objectList[i].ToString() ==str)
                {
                    return;
                }
            }
            _objectList.Add(obj);
        }
        public void RemoveObject(Type obj)
        {
            _objectList.Remove(obj);
        }
        public void Clear()
        {
            _objectList.Clear();
        }
        public void CleanUp()
        {
            for (int i = _objectList.Count - 1; i >= 0; i -- )
            {
                if (_objectList[i] == null)
                {
                    _objectList.RemoveAt(i);
                }
            }
        }
        public String[] DesiredInterfaceInstance(Type type)
        {
            if (_objectList.Count == 0)
            {
                return null;
            }
            int n = 0;
            bool[] flags = new bool[_objectList.Count];
            for (int i = 0; i < _objectList.Count; i ++ )
            {
                if (DynamicInstanceHelper.HasInterface(_objectList[i], type))
                {
                    n++;
                    flags[i] = true;
                }
            }
            if (n == 0)
            {
                return null;
            }
            String[] items = new String[n];
            n = 0;
            for (int i = 0; i < flags.Length;i ++ )
            {
                if (flags[i])
                {
                    items[n++] = _objectList[i].ToString();
                }
            }
            return items;

        }
        public Type IndexofDesiredInterfaceInstance(Type type, int id)
        {
            if (_objectList.Count == 0)
            {
                return null;
            }
            
            for (int i = 0; i < _objectList.Count; i++)
            {
                if (DynamicInstanceHelper.HasInterface(_objectList[i], type))
                {
                    if (id == 0)
                    {
                        return _objectList[i];
                    }
                    id--;
                }
            }
            return null;
           
        }
    }
}
