//: [Previous](@previous)

func bubbleSort<T: Comparable>(_ elements: [T]) -> [T] {
    var elements = elements
    elements.forEach { _ in
        for j in 1..<elements.count {
            if elements[j] < elements[j-1] {
                elements.swapAt(j, j-1)
            }
        }
    }
    return elements
}

let list = [ 10, 0, 3, 9, 2, 14, 8, 27, 1, 5, 8, -1, 26 ]
bubbleSort(list)

//: [Next](@next)
