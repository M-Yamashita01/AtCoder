using System;
using System.Collections;

namespace SomeSums
{    class Program
    {
        static void Main(string[] args)
        {
            string input = Console.ReadLine();
            string[] inputs = input.Split(' ');

            int n = Int32.Parse(inputs[0]);
            int a = Int32.Parse(inputs[1]);
            int b = Int32.Parse(inputs[2]);

            int sumTotal = 0;
            for(int i = 1; i <= n; i++)
            {
                int sum = 0;
                int digit = i.ToString().Length;
                int num = i;
                while(digit > 0)
                {                                                            
                    int numOfDigit = num % 10;
                    num = num / 10;
                    sum += numOfDigit;

                    digit--;
                }

                if ((a <= sum) && (sum <= b) )
                {
                    sumTotal += i;
                }
            }

            Console.WriteLine(sumTotal);
        }
    }
}
