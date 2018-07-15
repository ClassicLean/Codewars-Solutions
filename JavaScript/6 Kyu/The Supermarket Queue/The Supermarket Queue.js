function queueTime(customers, n) {
  let tills = [];
  for(let counter = 0;counter<n;counter++) tills.push(0);
  while(customers.length > 0){
    let minIndex = tills.indexOf(Math.min.apply(null,tills));
    tills[minIndex] = customers.shift();
  }
  return Math.max.apply(null,tills);
}
