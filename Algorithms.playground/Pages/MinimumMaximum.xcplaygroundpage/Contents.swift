
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

func maximum<T: Comparable>(_ array: [T]) -> T? {
    guard var maximum = array.first else {
        return nil
    }
    for element in array.dropFirst() {
        if element > maximum {
            maximum = element
        }
    }
    return maximum
}

let array = [ 8, 3, 9, 4, 6 ]
minimum(array)   // This will return 3
maximum(array)   // This will return 9
