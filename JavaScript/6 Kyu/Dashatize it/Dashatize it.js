function dashatize(num) {
  return num.toString()
    .replace(/([13579])/g,'-'+num+'-')
    .replace(/--+/g,'-')
    .replace(/(^-|-$)/g,'');
}
