//: [Previous](@previous)

func binarySearch<T: Comparable>(_ a: [T], key: T, range: Range<Int>) -> Int? {
    guard range.upperBound > range.lowerBound else {
        return nil
    }

    let midIndex = (range.upperBound + range.lowerBound) / 2

    if a[midIndex] > key {
        return binarySearch(a, key: key, range: range.lowerBound ..< midIndex)
    } else if a[midIndex] < key {
        return binarySearch(a, key: key, range: midIndex + 1 ..< range.upperBound)
    } else {
        return midIndex
    }
}

let numbers = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67]

binarySearch(numbers, key: 43, range: 0 ..< numbers.count)

// MARK: - Without recursion

func binarySearch2<T: Comparable>(_ a: [T], key: T) -> Int? {

    var upperBound = a.count
    var lowerBound = 0

    while upperBound >= lowerBound {
        let midIndex = (upperBound + lowerBound) / 2
        if a[midIndex] < key {
            lowerBound = midIndex + 1
        } else if a[midIndex] > key {
            upperBound = midIndex - 1
        } else {
            return midIndex
        }
    }

    return nil
}

binarySearch2(numbers, key: 43)

//: [Next](@next)
