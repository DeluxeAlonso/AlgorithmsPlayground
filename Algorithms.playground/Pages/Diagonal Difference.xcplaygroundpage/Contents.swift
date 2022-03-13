//: [Previous](@previous)

// Given a square matrix, calculate the absolute difference between the sums of its diagonals.
func diagonalDifference(arr: [[Int]]) -> Int {
    let count = arr.count
    var firstDiagonalSum = 0
    var secondDiagonalSum = 0
    for index in 0..<count {
        firstDiagonalSum += arr[index][index]
        secondDiagonalSum += arr[index][count-index-1]
    }
    return abs(firstDiagonalSum - secondDiagonalSum)
}

var input = [
    [1, 2, 3],
    [1, 2, 3],
    [1, 2, 3]
]

diagonalDifference(arr: input)

//: [Next](@next)
