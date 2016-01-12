using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FeatureStudio
{
    public enum ClassifiedResult
    {
        Any = 0,
        True,
        False,
    };
    class SampleFilter
    {
        double minPv =0;

        public double MinPv
        {
            get { return minPv; }
            set { minPv = value; }
        }
        double maxPv = 0;

        public double MaxPv
        {
            get { return maxPv; }
            set { maxPv = value; }
        }
        List<int> classLabel = new List<int>();

        public List<int> ClassLabel
        {
            get { return classLabel; }
            set { classLabel = value; }
        }
        List<int> predictLabel = new List<int>();

        public List<int> PredictLabel
        {
            get { return predictLabel; }
            set { predictLabel = value; }
        }
        ClassifiedResult classifiedResultType;

        public ClassifiedResult ClassifiedResultType
        {
            get { return classifiedResultType; }
            set { classifiedResultType = value; }
        }
      
        public bool IsPhaseOut(SampleData pData)
        {
            for (int i = 0; i < classLabel.Count; i++)
                if (pData._label == classLabel[i])
                    return true;
            for (int i = 0; i < predictLabel.Count; i++)
                if (pData._cid == predictLabel[i])
                    return true;
            if (pData._pv > minPv && pData._pv < maxPv)
                return true;
            if (classifiedResultType == ClassifiedResult.False)
            {
                if (pData._cid != pData._label)
                    return true;
            }
            else if (classifiedResultType == ClassifiedResult.True)
            {
                if (pData._cid == pData._label)
                    return true;
            }
                
              return false;
        }
        public bool IsQualified(SampleData data)
        {
            return !IsPhaseOut(data);
        }
    }
}
