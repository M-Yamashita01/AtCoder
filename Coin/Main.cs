using System;

namespace Coin
{
    class Program
    {
        static void Main(string[] args)
        {
            int a = Int32.Parse(Console.ReadLine());
            int b = Int32.Parse(Console.ReadLine());
            int c = Int32.Parse(Console.ReadLine());
            int x = Int32.Parse(Console.ReadLine());

            int counter = 0;
            if (500 * a + 100 * b + 50 * c < x)
            {
                Console.WriteLine(counter);
                return;
            }

            for (int i = 0; i <= a; i++ )
            {
                for (int j = 0; j <= b; j++)
                {
                    for (int k = 0; k <= c; k++)
                    {
                        if ((500 * i + 100 * j + 50 * k) == x)
                        {
                            counter++;
                        }
                    }
                }
            }
            Console.WriteLine(counter);
        }
    }
}
