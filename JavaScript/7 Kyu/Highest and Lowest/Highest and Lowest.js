function highAndLow(numbers){
  return Math.max.apply(null,numbers.split(' '))+' '+Math.min.apply(null,numbers.split(' '));
}
