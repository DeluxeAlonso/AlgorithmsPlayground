// Longest Substring Without Repeating Characters
// Given a string s, find the length of the longest substring without repeating characters.

func lengthOfLongestSubstring(_ s: String) -> Int {
    guard s.count > 1 else { return s.count }
    let sArray = Array(s)
    var maxLength = 0
    for index in 0...sArray.count - 1 {
        var string = ""
        for charIndex in index...sArray.count - 1 {
            if !string.contains(sArray[charIndex]) {
                string.append(sArray[charIndex])
            } else {
                break
            }
        }
        if string.count > maxLength {
            maxLength = string.count
        }
    }
    return maxLength
}

print(lengthOfLongestSubstring("abcabcbb")) // Should return 3. The answer is "abc", with the length of 3.
print(lengthOfLongestSubstring("bbbbb")) // The answer is "b", with the length of 1.
print(lengthOfLongestSubstring("pwwkew")) // The answer is "wke", with the length of 3.
print(lengthOfLongestSubstring("au")) // The answer is "wke", with the length of 3.
