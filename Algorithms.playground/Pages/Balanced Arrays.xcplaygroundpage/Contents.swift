// Find an element in array such that sum of left array is equal to sum of right array

func balancedElement(from array: [Int]) -> Int? {
    if array.count == 1 { return array.first }

    var startIndex = 0
    var leftSum = 0

    var endIndex = array.count - 1
    var rightSum = 0

    for _ in 0 ..< array.count {
        if startIndex == endIndex && leftSum == rightSum {
            return array[startIndex]
        }
        if startIndex == endIndex && leftSum != rightSum {
            return nil
        }

        if leftSum >= rightSum {
            rightSum += array[endIndex]
            endIndex -= 1
        } else if rightSum > leftSum {
            leftSum += array[startIndex]
            startIndex += 1
        }
    }

    return nil
}

print(balancedElement(from: [2, 3, 4, 1, 4, 5])) // Prints 1
