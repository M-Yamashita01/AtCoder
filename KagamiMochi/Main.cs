using System;
using System.Collections;

namespace KagamiMochi
{
    class Program
    {
        static void Main(string[] args)
        {
            int n = Int32.Parse(Console.ReadLine());
            ArrayList list = new ArrayList();
            for(int i = 0; i < n; i++)
            {
                int di = Int32.Parse(Console.ReadLine());
                if (list.Contains(di))
                {
                    continue;
                }

                list.Add(di);
            }

            Console.WriteLine(list.Count);

        }
    }
}
