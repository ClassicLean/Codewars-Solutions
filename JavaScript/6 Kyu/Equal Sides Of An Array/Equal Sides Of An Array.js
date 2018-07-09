function findEvenIndex(arr)
{
  let left = 0;
  let right = arr.reduce((a, b) => a + b);
  for(let item in arr){
    if(item > 0) left += arr[item - 1];
    right -= arr[item];
    if(left == right) return parseInt(item);
  }
  return -1;
}
