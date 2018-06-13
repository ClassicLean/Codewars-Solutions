/*
Given a number, return a string with dash'-'marks before and after each odd integer, but do not begin or end the string with a dash mark.

Ex:
dashatize(274) -> '2-7-4'
dashatize(6815) -> '68-1-5'
*/
function dashatize(num) {
  let arrayNum = (''+Math.abs(num)).split('');
  let result = [];
  for(let counter = 0;counter < arrayNum.length; counter++){
    let digit = arrayNum[counter];
    if(digit % 2 == 1 &&
      arrayNum[counter - 1] % 2 == 0 &&
      arrayNum[counter + 1] % 2 == 0)
      result.push('-',digit,'-');
    else if(digit % 2 == 1 &&
      arrayNum[counter - 1] % 2 == 0)
      result.push('-',digit,'-');
    else if(digit % 2 == 1 &&
      counter == arrayNum.length - 1 &&
      arrayNum[counter - 1] % 2 == 0)
      result.push('-',digit);
    else if(digit % 2 == 1)  result.push(digit,'-');
    else result.push(digit);
  }
  if(result[result.length - 1] == '-') result.pop();
  return result.join('');
}
