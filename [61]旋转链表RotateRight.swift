class Solution {
    func rotateRight(_ head: ListNode?, _ k: Int) -> ListNode? {
        var newHead = head
        var n = 1
        while newHead?.next != nil {
            n += 1
            newHead = newHead?.next
        }
        newHead?.next = head
        let step = n - (k % n)
        for _ in 0..<step {
            newHead = newHead?.next
        }
        let result = newHead?.next
        newHead?.next = nil
        return result
    }
}
