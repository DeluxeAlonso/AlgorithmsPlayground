// MARK: - Palindrome

// Return true if a given string is a palindrome, false otherwise.

func isPalindrome(_ string: String) -> Bool {
    var i = 0
    var j = string.count - 1

    let stringArray = Array(string)

    while (i < j) {
        if stringArray[i] != stringArray[j] { return false }
        i += 1
        j -= 1
    }

    return true
}

print(isPalindrome("aba")) // Prints true

// MARK: - Two sum with sorted array

// Given a sorted array of unique integers and a target integer, return true if there exists a pair of numbers that sum to target, false otherwise.

func twoSumSorted(_ array: [Int], target: Int) -> Bool {
    var i = 0
    var j = array.count - 1
    while i < j {
        if array[i] + array[j] > target {
            j -= 1
        } else if array[i] + array[j] < target {
            i += 1
        } else {
            return true
        }
    }
    return false
}

print(twoSumSorted([1, 2, 4, 6, 8, 9, 14, 15], target: 13)) // Prints true
print(twoSumSorted([1, 2, 4, 6, 8, 9, 14, 15], target: 100)) // Prints false
