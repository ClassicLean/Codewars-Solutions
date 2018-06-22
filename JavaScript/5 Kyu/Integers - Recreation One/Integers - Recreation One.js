function listSquared(m, n) {
  let result = [];
  for(let counter = m;counter <= n;counter++){
    let divisors = getDivisors(counter);
    let sum = divisors.map(digit => digit*digit).reduce((a,b) => a+b,0);
    if(sum % Math.sqrt(sum) == 0) result.push([counter,sum]);
  }
  return result;
}

function getDivisors(number){
  let divisors = [];
  for(let counter = 1;counter<=number;counter++){
    if(number % counter === 0) divisors.push(counter);
  }
  return divisors;
}
