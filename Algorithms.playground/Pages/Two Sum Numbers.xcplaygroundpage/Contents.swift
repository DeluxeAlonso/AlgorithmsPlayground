//: [Previous](@previous)

// Given an array of integers and an integer target,
// return the indices of two numbers that add up to the target.

// MARK: - O(n2)

func twoSum(_ nums: [Int], target: Int) -> (Int, Int)? {
    for i in nums {
        var newNums = nums
        let indexToRemove = Int(nums.firstIndex(of: i) ?? 0)
        newNums.remove(at: indexToRemove)
        for j in nums {
            if nums[i] + nums[j] == target { return (i, j) }
        }
    }
    return nil
}

// MARK: - O(n)

func twoSum2(_ nums: [Int], target: Int) -> (Int, Int)? {
    var tempDict: [Int: Int] = [:]
    for (index, num) in nums.enumerated() {
        let complementNum = target - num
        if tempDict.keys.contains(complementNum) {
            return (index, tempDict[complementNum]!)
        }
        tempDict[num] = index
    }
    return nil
}

// MARK: - O(nlogn)

func twoSum3(_ nums: [Int], target: Int) -> (Int, Int)? {
    let sortedNums = nums.sorted()
    var firstIndex = 0
    var lastIndex = nums.count - 1
    while firstIndex < lastIndex {
        switch sortedNums[firstIndex] + sortedNums[lastIndex] {
        case target:
            return (firstIndex, lastIndex)
        case ..<target:
            firstIndex += 1
        default:
            lastIndex -= 1
        }
    }
    return nil
}

let a = [2, 3, 4, 4, 7, 8, 9, 10, 12, 14, 21, 22, 100]

twoSum(a, target: 11)
twoSum2(a, target: 11)
twoSum3(a, target: 11)

//: [Next](@next)
