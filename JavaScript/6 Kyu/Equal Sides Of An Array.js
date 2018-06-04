function findEvenIndex(arr)
{
  let left = 0;
  let right = arr.reduce((a,b) => a+b,0);
  for(let counter = 0;counter<arr.length;counter++){
    if(counter>0) left += arr[counter-1];
    right -= arr[counter];
    if(left === right) return counter;
  }
  return -1;
}
