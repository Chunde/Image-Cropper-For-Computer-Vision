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
            _SampleList.Sort(SortByNameCompare);
        }
        public void SortByPredictedValue()
        {
            _SampleList.Sort(SortByPredictedValue);
        }
        private static int SortByNameCompare(SampleData obj1, SampleData obj2)
        {
            return obj1._name.CompareTo(obj2._name);
        }
        private static int SortByPredictedValue(SampleData obj1, SampleData obj2)
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
