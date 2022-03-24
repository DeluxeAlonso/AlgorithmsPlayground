
func minimum<T: Comparable>(_ array: [T]) -> T? {
    guard var minimum = array.first else {
        return nil
    }
    for element in array.dropFirst() {
        if element < minimum {
            minimum = element
        }
    }
    return minimum
}
