
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}
class Solution {
    func isPalindrome(_ head: ListNode?) -> Bool {
        if head == nil || head?.next == nil {
            return true
        }
        var firstNode = head
        var secondNode = head?.next
        var start: ListNode?, end: ListNode?
        while secondNode != nil && secondNode?.next != nil {
            start = firstNode
            firstNode = firstNode?.next
            secondNode = secondNode?.next?.next
            start?.next = end
            end = start
        }
        if secondNode != nil {
            start = firstNode
            firstNode = firstNode?.next
            start?.next = end
        } else {
            firstNode = firstNode?.next
        }
        while start != nil && firstNode != nil {
            if start?.val != firstNode?.val {
                return false
            }
            start = start?.next
            firstNode = firstNode?.next
        }
        return true
    }
}
