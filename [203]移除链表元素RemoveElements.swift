class Solution {
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        var listNode = head
        while listNode?.val == val {
            listNode = listNode?.next
        }
        var node = listNode
        while node != nil {
            if node?.next?.val == val {
                node?.next = node?.next?.next
                continue
            }
            node = node?.next
        }
        return listNode
    }
}
