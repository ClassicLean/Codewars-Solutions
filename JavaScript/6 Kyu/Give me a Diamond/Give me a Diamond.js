function diamond(n){
  if(n % 2 == 0 || n < 1) return null;
  let counter = 0;
  let add;
  let diamond = line(counter, n);
  while((counter += 2) < n){
    add = line(counter / 2, n - counter);
    diamond = add + diamond + add;
  }
  return diamond;
}

function line(spaces, stars){
  return (" ").repeat(spaces) + ("*").repeat(stars) + "\n";
}
