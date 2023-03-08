// Given two sorted arrays nums1 and nums2 of size m and n respectively, return the median of the two sorted arrays.
// Input: nums1 = [1,3], nums2 = [2]
// Output: 2.00000
// Explanation: merged array = [1,2,3] and median is 2.
// Extracted from Leetcode: https://leetcode.com/problems/median-of-two-sorted-arrays/

import Foundation

// MARK: - Using sort

func findMedianSortedArraysV1(_ nums1: [Int], _ nums2: [Int]) -> Double {
    let mergedArray = (nums1 + nums2).sorted(by: { $0 < $1 })
    let index = Int(Double(mergedArray.count / 2).rounded(.down))
    if mergedArray.count % 2 == 0 {
        return Double(mergedArray[index] + mergedArray[index - 1]) / 2.0
    } else {
        return Double(mergedArray[index])
    }
}

print(findMedianSortedArraysV1([1, 3], [2])) // Prints 2
print(findMedianSortedArraysV1([1, 2], [3, 4])) // Prints 2.5
