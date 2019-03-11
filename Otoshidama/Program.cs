using System;

namespace Otoshidama
{
    class Program
    {
        static void Main(string[] args)
        {
            string input = Console.ReadLine();
            string[] ny = input.Split(' ');
            int n = Int32.Parse(ny[0]);
            int y = Int32.Parse(ny[1]);

            bool isOk = equalN(n, y);

            if (!isOk)
            {
                Console.WriteLine("-1 -1 -1");
            }
            
        }

        private static bool equalN(int n, int y)
        {
            for (int i = 0; i <= n; i++)
            {
                if (10000 * i > y)
                {
                    return false;
                }
                for (int j = 0; j <= n - i; j++)                
                {
                    if (10000 * i + 5000 * j > y)
                    {
                        continue;
                    }

                    int k = n - i - j;

                    if (10000 * i + 5000 * j + 1000 * k == y)
                    {

                        Console.WriteLine(i + " " + j + " " + k);
                        return true;
                    }

                }
            }

            return false;
        }
    }
}
