let upAlphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
let downAlphabet = 'abcdefghijklmnopqrstuvwxyz';

function movingShift(s, shift) {
    return arraySplit(letterShift(s,shift,1));
}

function demovingShift(arr, shift) {
    return letterShift(arr.join(''), -shift, -1);
}

function letterShift(s,shift,step){
  return s.toString().split('').map(function(letter, counter){
    let upIndex = upAlphabet.indexOf(letter);
    let downIndex = downAlphabet.indexOf(letter);
    let library, libraryIndex;
    if(upIndex == -1 && downIndex == -1) return letter;
    if(upIndex > -1){
      library = upAlphabet;
      libraryIndex = upIndex;
    }
    else{
      library = downAlphabet;
      libraryIndex = downIndex;
    }
    let location = (counter * step + libraryIndex + shift) % 26;
    location = location >= 0 ? location : location + 26;
    return library[location];
  }).join('');
}

function arraySplit(s){
  let size = Math.ceil(s.length / 5);
  return [s.slice(0, size), s.slice(size, size * 2), s.slice(size * 2, size * 3), s.slice(size * 3, size * 4), s.slice(size * 4)];
}
