function isValidWalk(walk) {
  let horizontal = 0;
  let vertical = 0;
  for(let direction in walk){
    switch(walk[direction]){
      case('n'): vertical++; break;
      case('s'): vertical--; break;
      case('w'): horizontal++; break;
      case('e'): horizontal--; break;
    }
  }
  if(walk.length == 10 && horizontal == 0 && vertical == 0) return true;
}
