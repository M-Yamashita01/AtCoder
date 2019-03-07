using System;
using System.Collections;

namespace CardGameForTwo
{
    class Program
    {
        static void Main(string[] args)
        {
            int n = Int32.Parse(Console.ReadLine());
            string inputStr = Console.ReadLine();
            string[] inputStrArr = inputStr.Split(' ');

            int[] inputNumArr = new int[n];
            for( int i = 0; i < n; i++)
            {
                inputNumArr[i] = Int32.Parse(inputStrArr[i]); 
            }

            Array.Sort(inputNumArr);
            Array.Reverse(inputNumArr);
            
            int diffPoint = 0;
            for(int i = 0; i < n - 1; i = i + 2)
            {
                diffPoint = diffPoint + inputNumArr[i] - inputNumArr[i + 1];
            }
            
            if (n % 2 != 0)
            {
                diffPoint += inputNumArr[n - 1];
            }

            Console.WriteLine(diffPoint);

         }
    }
}
