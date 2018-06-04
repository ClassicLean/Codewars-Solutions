function descendingOrder(n){
  return +(''+n).split('').sort((a,b)=> b-a).join('');
}
