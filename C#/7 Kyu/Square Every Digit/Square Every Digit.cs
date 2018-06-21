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
