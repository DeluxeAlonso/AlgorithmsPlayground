//: [Previous](@previous)

func quicksort<T: Comparable>(_ array: [T]) -> [T] {
    guard array.count > 1 else { return [] }

    let pivot = array[array.count / 2]

    let lesserElements = array.filter { $0 < pivot }
    let greaterElements = array.filter { $0 > pivot }
    let equal = array.filter { $0 == pivot }

    return quicksort(lesserElements) + equal + quicksort(greaterElements)
}

let list = [ 10, 0, 3, 9, 2, 14, 8, 27, 1, 5, 8, -1, 26 ]
quicksort(list)

//: [Next](@next)
