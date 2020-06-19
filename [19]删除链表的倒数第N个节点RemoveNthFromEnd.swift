class Solution {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        var first: ListNode? = head
        var second: ListNode? = head
        for _ in 0..<n {
            second = second?.next
        }
        while second?.next != nil {
            first = first?.next
            second = second?.next
        }
        if second == nil {
            return head?.next
        } else {
            first?.next = first?.next?.next
            return head
        }
    }
}
