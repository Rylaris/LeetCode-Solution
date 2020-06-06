/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */
class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        let result: ListNode? = ListNode(0)
        var tempNode = result
        var point1 = l1, point2 = l2
        var tempDigit = 0
        while point1 != nil || point2 != nil {
            let val = (point1?.val ?? 0) + (point2?.val ?? 0) + tempDigit
            tempNode?.next = ListNode(val % 10)
            tempDigit = val / 10
            point1 = point1?.next
            point2 = point2?.next
            tempNode = tempNode?.next
        }
        if tempDigit == 1 {
            tempNode?.next = ListNode(1)
        }
        return result?.next
    }
}

