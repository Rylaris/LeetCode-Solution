class Solution {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        let blindNode: ListNode? = ListNode(0)
        blindNode?.next = head
        var left = blindNode
        var mid = left?.next
        var right = mid?.next
        while mid != nil {
            while mid?.val == right?.val {
                right = right?.next
            }
            if mid?.next !== right {
                left?.next = right
            } else {
                left = left?.next
            }
            mid = left?.next
            right = mid?.next
        }
        return blindNode?.next
    }
}
