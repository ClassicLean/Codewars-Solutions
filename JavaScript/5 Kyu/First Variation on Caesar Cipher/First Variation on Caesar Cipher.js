function movingShift(s, shift) {
  let sArray = s.split('');
  let letters = /^[A-Za-z]+$/;
  for(let char in sArray){
    let smallChar = 122 - sArray[char].charCodeAt(0);
    let bigChar = 90 - sArray[char].charCodeAt(0);
    while(shift > 26) shift -= 26;
    if(!sArray[char].match(letters)){
      shift++;
      continue;
    }
    if(sArray[char].charCodeAt(0) + shift > 90 &&
      sArray[char].charCodeAt(0) <= 90 &&
      sArray[char].charCodeAt(0) > 64){
      sArray[char] = String.fromCharCode(Math.abs(bigChar - shift) + 64);
    }
    else if(sArray[char].charCodeAt(0) + shift > 122 &&
      sArray[char].charCodeAt(0) <= 122 &&
      sArray[char].charCodeAt(0) > 96){
      sArray[char] = String.fromCharCode(Math.abs(smallChar - shift) + 96);
      }
    else sArray[char] = String.fromCharCode(sArray[char].charCodeAt(0) + shift);
    shift++;
  }
  return arraySplit(sArray.join(''));
}

function demovingShift(arr, shift) {
  let sArray = arr.join('').split('');
  let letters = /^[A-Za-z]+$/;
  for(let char in sArray){
    let smallChar = 96 - sArray[char].charCodeAt(0);
    let bigChar = 64 - sArray[char].charCodeAt(0);
    while(shift > 26) shift -= 26;
    if(!sArray[char].match(letters)){
      shift++;
      continue;
    }
    if(sArray[char].charCodeAt(0) - shift < 65 &&
      sArray[char].charCodeAt(0) <= 90 &&
      sArray[char].charCodeAt(0) > 64){
      sArray[char] = String.fromCharCode(Math.abs(90 - bigChar - shift));
    }
    else if(sArray[char].charCodeAt(0) - shift < 97 &&
      sArray[char].charCodeAt(0) <= 122 &&
      sArray[char].charCodeAt(0) > 96){
      sArray[char] = String.fromCharCode(Math.abs(122 - smallChar - shift));
      }
    else sArray[char] = String.fromCharCode(sArray[char].charCodeAt(0) - shift);
    shift++;
  }
  return sArray.join('');
}

function arraySplit(word){
  let result = [];
  word = word.split('');
  let wordLen = word.length;
  let div = Math.ceil(word.length / 5);
  while(wordLen > 0){
    result.push(word.slice(0,div).join(''));
    word.slice(0,div).forEach(() => word.shift());
    wordLen -= div;
  }
  for(let counter = result.length; counter < 5; counter++) result.push("");
  return result;
}
