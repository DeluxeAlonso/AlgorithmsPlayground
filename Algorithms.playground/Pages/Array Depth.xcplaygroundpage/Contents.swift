// Calculate the depth of an homogeneus multi-dimensional array

extension Collection {

    var depth: Int {
        ((first as? [Any])?.depth ?? 0) + 1
    }

}

print([[1, 2], [2, 3], [4, 5]].depth) // Prints 2
print([[[1, 2]], [[2, 3]], [[4, 5]]].depth) // Prints 3

// Given a multi-dimensional array, calculate the sum of the integer value multiplie by its depth

func calculateDepthOperation(_ elements: Any, startIndex: Int = 0) -> Int {
    guard let numbers = elements as? [Any] else {
        return ((elements as? Int) ?? 0) * startIndex
    }
    var value = 0
    for number in numbers {
        value += calculateDepthOperation(number, startIndex: startIndex + 1)
    }
    return value
}

print(calculateDepthOperation([1, 1, [1, 1, [1]], 1])) // Prints 10 -> 1 + 1 + (1 * 2) + (1 * 2) + (1 * 3) + 1
