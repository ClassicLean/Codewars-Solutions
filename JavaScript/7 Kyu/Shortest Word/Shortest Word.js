function findShort(s){
  return Math.min.apply(null,s.split(' ').map(word => word.length));
}
