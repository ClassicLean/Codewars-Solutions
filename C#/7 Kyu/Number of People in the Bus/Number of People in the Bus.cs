using System.Linq;
using System;
using System.Collections.Generic;

public class Kata
{
  public static int Number(List<int[]> peopleListInOut)
  {
    return peopleListInOut.Sum(passenger => passenger[0] - passenger[1]);
  }
}
