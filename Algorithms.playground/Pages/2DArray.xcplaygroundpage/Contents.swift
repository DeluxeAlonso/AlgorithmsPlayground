//: [Previous](@previous)

// Create a 2 dimensional array 9 x 7

var twoDimArray = [[Int]]()

for _ in 1...9 {
    var row = [Int]()
    for _ in 1...7 {
        row.append(0)
    }
    twoDimArray.append(row)
}

print(twoDimArray)

//: [Next](@next)
