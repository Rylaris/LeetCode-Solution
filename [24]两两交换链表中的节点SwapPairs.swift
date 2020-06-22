class Solution {
    func swapPairs(_ head: ListNode?) -> ListNode? {
        let blindNode: ListNode? = ListNode(0)
        blindNode?.next = head
        var index = blindNode
        var first = blindNode?.next
        var second = blindNode?.next?.next
        while second != nil && first != nil {
            first?.next = second?.next
            second?.next = first
            index?.next = second
            index = second?.next
            second = first?.next?.next
            first = first?.next
        }
        return blindNode?.next
    }
}
