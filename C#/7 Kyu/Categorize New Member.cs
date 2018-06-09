/*
The Western Suburbs Croquet Club has two categories of membership, Senior and Open. They would like your help with an application form that will tell prospective members which category they will be placed.

To be a senior, a member must be at least 55 years old and have a handicap greater than 7. In this croquet club, handicaps range from -2 to +26; the better the player the lower the handicap.
Input

Input will consist of a list of lists containing two items each. Each list contains information for a single potential member. Information consists of an integer for the person's age and an integer for the person's handicap.

Note for F#: The input will be of (int list list) which is a List>
Example Input

new int[][] {new int[] {18, 20}, new int[] {45, 2}, new int[] {61, 12}, new int[] {37, 6}, new int[] {21, 21}, new int[] {78, 9}}

Output

Output will consist of a list of string values (in Haskell: Open or Senior) stating whether the respective member is to be placed in the senior or open category.
Example Output

new string[] {"Open", "Open", "Senior", "Open", "Open", "Senior"}
*/
using System;
using System.Collections.Generic;
using System.Linq;

public class Kata
{
    public static IEnumerable<string> OpenOrSenior(int[][] data)
    {
      var result = new List<string>();

      foreach (var subList in data)
      {
        bool age = false;
        bool handi = false;
        foreach (int item in subList)
        {
          if (subList[0] >= 55) age = true;
          if (subList[1] > 7) handi = true;
        }
        if(age == true && handi == true) result.Add("Senior");
        else result.Add("Open");
      }
      return result;
    }
}
