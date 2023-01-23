// You are given two non-empty linked lists representing two non-negative integers.
// The digits are stored in reverse order, and each of their nodes contains a single
// digit. Add the two numbers and return the sum as a linked list.

// Input: l1 = [2,4,3], l2 = [5,6,4]
// Output: [7,0,8]
// Explanation: 342 + 465 = 807.

// Problem extracted from Leetcode.

class ListNode {
    var val: Int
    var next: ListNode?
    init() { self.val = 0; self.next = nil; }
    init(_ val: Int) { self.val = val; self.next = nil; }
    init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 }

class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var l1 = l1
        var l2 = l2

        var resultNode: ListNode? = ListNode(0)
        let head = resultNode
        var carry = 0

        // We need to check for the carry for sum results that have more digits than both operands.
        while l1 != nil || l2 != nil || carry > 0 {
            let l1Val = l1?.val ?? 0
            let l2Val = l2?.val ?? 0
            let sum = l1Val + l2Val + carry

            carry = sum / 10
            let digit = sum % 10

            resultNode?.next = ListNode(digit)
            resultNode = resultNode?.next
            l1 = l1?.next
            l2 = l2?.next
        }
        return head?.next
    }
}
