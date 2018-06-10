/*
Given an array, find the int that appears an odd number of times.

There will always be only one integer that appears an odd number of times.
*/
function findOdd(A) {
  let arrayNumbers = [];
  let arrayResults = [];
  let prev;
  A.sort();
  for(let element of A){
    if(element !== prev){
      arrayNumbers.push(element);
      arrayResults.push(1);
    }
    else {
      arrayResults[arrayResults.length-1]++;
    }
    prev = element;
  }
  for(let element of arrayResults){
    if(Math.abs(element%2) == 1) {
      return arrayNumbers[arrayResults.findIndex(element => Math.abs(element%2) == 1)];
    }
  }
}
