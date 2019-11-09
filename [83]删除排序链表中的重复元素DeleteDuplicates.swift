class Solution {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        var point = head
        var flag = head?.val
        while point?.next != nil {
            if point?.next?.val == flag {
                point?.next = point?.next?.next
            } else {
                flag = point?.next?.val
                point = point?.next
            }
        }
        return head
    }
}
