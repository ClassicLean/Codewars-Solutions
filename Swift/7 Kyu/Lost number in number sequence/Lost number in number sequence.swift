func findDeletedNumber(_ array: [Int], _ mixArray: [Int]) -> Int {
    for counter in (0..<array.count) {
        if array[counter] != mixArray.sorted()[counter] {
            return array[counter]
        }
    }
    return 0
}
