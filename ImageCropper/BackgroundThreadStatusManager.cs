using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;

namespace FeatureStudio
{
    
    class BackgroundThreadStatusManager
    {
        List<int> threadIDList = new List<int>();
        List<String> threadStatusStringList = new List<String>();
        public void UpdateStatus(String str)
        {
            Monitor.Enter(threadStatusStringList);
            int id = Thread.CurrentThread.ManagedThreadId;
            id = AddToIDList(id);
            threadStatusStringList[id] = str;
            Monitor.Exit(threadStatusStringList);
        }

        private int AddToIDList(int id)
        {
            for (int i = 0; i < threadIDList.Count; i++)
            {
                if (threadIDList[i] == id)
                    return i;
           }
            threadIDList.Add(id);
            threadStatusStringList.Add("");
            return threadIDList.Count - 1;
        }

    }
}
