function diamond(n){
  if(!(n & 1) || n < 1) return null;
  let add;
  let counter = 0;
  let diam = line(counter, n);
  while((counter += 2) < n){
    add = line(counter / 2, n - counter);
    diam = add + diam + add;
  }
  return diam;
}

function line(spaces,stars){
  return " ".repeat(spaces) + "*".repeat(stars) + "\n";
}
