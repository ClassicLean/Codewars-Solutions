let isPP = function(n){
  for(let counter = 2; counter * counter <= n; ++counter)
    for(let innerCounter = 2; Math.pow(counter, innerCounter) <= n; ++innerCounter)
      if(Math.pow(counter, innerCounter) == n) return [counter, innerCounter];
  return null;
};
