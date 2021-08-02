//: [Previous](@previous)

func kthLargestElement(in array: [Int], k: Int) -> Int? {
    let sortedArray = array.sorted()
    guard k < sortedArray.count + 1, k > 0 else {
        return nil
    }
    return sortedArray[sortedArray.count - k]
}

kthLargestElement(in: [ 7, 92, 23, 9, -1, 0, 11, 6 ], k: 4)

//: [Next](@next)
