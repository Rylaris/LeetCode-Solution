class Solution {
    func partition(_ head: ListNode?, _ x: Int) -> ListNode? {
        let blindNode: ListNode? = ListNode(Int.max)
        blindNode?.next = head
        var left = blindNode
        while left?.next?.val ?? Int.max < x {
            left = left?.next
        }
        var right = left
        while right?.next != nil {
            while right?.next?.val ?? Int.min >= x {
                right = right?.next
            }
            if right?.next == nil {
                break
            }
            let temp = left?.next
            left?.next = ListNode((right?.next!.val)!)
            left?.next?.next = temp
            left = left?.next
            right?.next = right?.next?.next
        }
        return blindNode?.next
    }
}
