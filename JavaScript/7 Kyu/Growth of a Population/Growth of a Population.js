function nbYear(p0, percent, aug, p) {
  let years;
  for(years = 0;p0<p;years++){
    p0+= p0 * (percent *1e-2) + aug;
  }
  return years;
}
