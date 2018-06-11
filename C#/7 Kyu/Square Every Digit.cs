/*Welcome. In this kata, you are asked to square every digit of a number.

For example, if we run 9119 through the function, 811181 will come out, because 9^2 is 81 and 1^2 is 1.

Note: The function accepts an integer and returns an integer
*/
using System;
using System.Linq;

public class Kata
{
  public static int SquareDigits(int n)
  {
    var nArray = n.ToString().ToCharArray().Select(digit => Math.Pow(digit - '0', 2));
    var result = "";
    foreach (var digit in nArray)
    {
        result += Convert.ToInt32(digit);

    }
    return int.Parse(result);
  }
}
