func findDeletedNumber(_ array: [Int], _ mixArray: [Int]) -> Int {
    return array.first(where: { !mixArray.contains($0) }) ?? 0
}
