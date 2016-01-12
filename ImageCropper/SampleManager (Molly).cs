using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FeatureStudio
{
    [Serializable]
    public class SampleData
    {
        public String _name;
        public int _label;
        public double _pv;
        public byte _fid;
        public byte _cid;
    }
    [Serializable]
    public class SampleManager
    {
        List<SampleData> _SampleList = new List<SampleData>();
        List<String> _RootList = new List<String>();
        bool sortbyNameFlag = false;
        bool sortbyValueFlag = false;
        public List<String> RootList
        {
            get { return _RootList; }
            set { _RootList = value; }
        }
        internal List<SampleData> SampleList
        {
            get { return _SampleList; }
            set { _SampleList = value; }
        }
        public SampleManager()
        {
            
        }
        public String ImagePath(int index)
        {
            return _RootList[_SampleList[index]._fid] + "\\" + _SampleList[index]._name;
        }
        public void SortByName()
        {
            sortbyNameFlag = !sortbyNameFlag;
            sortbyValueFlag = false;
            if (sortbyNameFlag)
            {
                _SampleList.Sort(SortByNameCompare);
            } 
            else
            {
                _SampleList.Sort(SortByNameCompare2);
            }
            
        }
        public void SortByPredictedValue()
        {
            sortbyValueFlag = !sortbyValueFlag;
            sortbyNameFlag = false;
            if (sortbyValueFlag)
            {
                _SampleList.Sort(SortByPredictedValue);
            } 
            else
            {
                _SampleList.Sort(SortByPredictedValue2);
            }
        }
        private static int SortByNameCompare(SampleData obj1, SampleData obj2)
        {
            return obj1._name.CompareTo(obj2._name);
        }
        private static int SortByNameCompare2(SampleData obj1, SampleData obj2)
        {
            return obj2._name.CompareTo(obj1._name);
        }
        private static int SortByPredictedValue(SampleData obj1, SampleData obj2)
        {
            if (obj1._pv == obj2._pv)
                return 0;
            if (obj1._pv > obj2._pv)
                return 1;
            return -1;
        }
        private static int SortByPredictedValue2(SampleData obj2, SampleData obj1)
        {
            if (obj1._pv == obj2._pv)
                return 0;
            if (obj1._pv > obj2._pv)
                return 1;
            return -1;
        }
        internal void Clear()
        {
            _SampleList.Clear();
            _RootList.Clear();
        }
    }
}
