using System;

namespace ABC081A
{
    class Program
    {
        static void Main(string[] args)
        {
            string input = Console.ReadLine();
            Console.WriteLine(input.Replace("0", "").Length);
        }
    }
}
