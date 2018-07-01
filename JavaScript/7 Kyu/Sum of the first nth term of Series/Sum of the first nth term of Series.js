function SeriesSum(n)
{
  let sum = 0;
  for(let counter = 0;counter <n;counter++) sum+= 1/(counter*3+1);
  return sum.toFixed(2).toString();
}
