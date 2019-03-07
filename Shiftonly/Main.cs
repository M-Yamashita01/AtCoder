using System;

namespace Shiftonly
{
    class Program
    {
        static void Main(string[] args)
        {
            string nStr = Console.ReadLine();            
            int n = Int32.Parse(nStr);
            string a_i = Console.ReadLine();
            string[] numStrs = a_i.Split(' ');
            int[] numbers = new int[n];

            for(int i = 0; i < n; i++)
            {
                numbers[i] = Int32.Parse(numStrs[i]);
            }
            int counter = 0;

            int operatorCount = IsDivide(numbers, counter);
            Console.WriteLine(operatorCount);
        }

        static int IsDivide(int[] numbers, int counter)
        {
            int[] dividedNumbers = new int[numbers.Length];
            for(int i = 0; i < numbers.Length; i++)
            {
                if (numbers[i] % 2 != 0 )
                {
                    return counter;
                }
                dividedNumbers[i] = numbers[i] /2;
            }
            counter++;
            counter = IsDivide(dividedNumbers, counter);
            return counter;
        }
    }
}
