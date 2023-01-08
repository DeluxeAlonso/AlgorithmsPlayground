// Return true if a given string is a palindrome, false otherwise.

// MARK: - Using two pointers approach

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

print(isPalindrome("aba"))
