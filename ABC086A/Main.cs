using System;

namespace ABC086A
{
    class Program
    {
        static void Main(string[] args)
        {
            string input = Console.ReadLine();
            string[] abStr = input.Split(' ');
            int a = Int32.Parse(abStr[0]);
            int b = Int32.Parse(abStr[1]);
            int result = a * b;
            if (result % 2 == 0)
            {
                Console.WriteLine("Even");
            }
            else
            {
                Console.WriteLine("Odd");
            }            
        }
    }
}
