function calculateYears(principal, interest, tax, desired) {
    let counter;
    for(counter = 0; principal < desired;counter++){
      principal += (principal*interest) - principal*interest*tax;
    }
    return counter;
}
