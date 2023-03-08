// Given two sorted arrays nums1 and nums2 of size m and n respectively, return the median of the two sorted arrays.
// Input: nums1 = [1,3], nums2 = [2]
// Output: 2.00000
// Explanation: merged array = [1,2,3] and median is 2.
// Extracted from Leetcode: https://leetcode.com/problems/median-of-two-sorted-arrays/

import Foundation

// MARK: - Using sort method

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

// MARK: - Without sort method using popFirst

func findMedianSortedArraysV2(_ nums1: [Int], _ nums2: [Int]) -> Double {
    var newArray: [Int] = []
    var nums1 = nums1[nums1.indices]
    var nums2 = nums2[nums2.indices]

    while !nums1.isEmpty || !nums2.isEmpty {
        guard let val1 = nums1.first else {
            newArray.append(nums2.popFirst()!)
            continue
        }
        guard let val2 = nums2.first else {
            newArray.append(nums1.popFirst()!)
            continue
        }

        if val1 > val2 {
            newArray.append(val2)
            nums2.popFirst()
        } else {
            newArray.append(val1)
            nums1.popFirst()
        }
    }

    let index = Int(Double(newArray.count / 2).rounded(.down))
    if newArray.count % 2 == 0 {
        return Double(newArray[index] + newArray[index - 1]) / 2.0
    } else {
        return Double(newArray[index])
    }
}

//func findMedianSortedArraysV2(_ nums1: [Int], _ nums2: [Int]) -> Double {
//    var newArray: [Int] = []
//    var nums1 = nums1
//    var nums2 = nums2
//
//    while !nums1.isEmpty || !nums2.isEmpty {
//        guard let val1 = nums1.first else {
//            nums1.popFirst()
//            newArray.append(nums2.removeFirst())
//            continue
//        }
//        guard let val2 = nums2.first else {
//            newArray.append(nums1.removeFirst())
//            newArray.drop
//            continue
//        }
//
//        if val1 > val2 {
//            newArray.append(nums2.removeFirst())
//        } else {
//            newArray.append(nums1.removeFirst())
//        }
//    }
//
//    let index = Int(Double(newArray.count / 2).rounded(.down))
//    if newArray.count % 2 == 0 {
//        return Double(newArray[index] + newArray[index - 1]) / 2.0
//    } else {
//        return Double(newArray[index])
//    }
//}


print(findMedianSortedArraysV2([1, 3], [2])) // Prints 2
print(findMedianSortedArraysV2([1, 2], [3, 4])) // Prints 2.5
