/*Welcome. In this kata, you are asked to square every digit of a number.

For example, if we run 9119 through the function, 811181 will come out, because 9^2 is 81 and 1^2 is 1.

Note: The function accepts an integer and returns an integer
*/
using System;

public class Kata
{
  public static int SquareDigits(int n)
  {
    string result = "";
    foreach(char digit in n.ToString()){
      int square = int.Parse(digit.ToString());
      result += square * square;
    }
    return int.Parse(result);
  }
}
