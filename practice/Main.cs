using System;

namespace practice
{
    class Program
        {
        static void Main(string[] args)
        {
            int a = Int32.Parse(Console.ReadLine());
            string bc = Console.ReadLine();
            string s = Console.ReadLine();
            string[] bcStr = bc.Split(' ');
            int b = Int32.Parse(bcStr[0]);
            int c = Int32.Parse(bcStr[1]);

            Console.WriteLine(a+b+c + " " + s);
        }
    }
}
