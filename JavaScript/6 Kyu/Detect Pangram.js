function isPangram(string){
  return 'qwertyuiopasdfghjklzxcvbnm'.split.every(letter => string.toLowerCase().indexOf(letter) !== -1);
}
