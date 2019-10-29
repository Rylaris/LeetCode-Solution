class Solution {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        if l1 == nil && l2 == nil {
            return nil
        }
        var newListNode = ListNode.init(0)
        let headPointer = newListNode
        var list1 = l1, list2 = l2
        while list1 != nil && list2 != nil{
            if (list1?.val)! < (list2?.val)! {
                newListNode.val = (list1?.val)!
                newListNode.next = ListNode.init(0)
                newListNode = newListNode.next!
                list1 = list1?.next
            } else {
                newListNode.val = (list2?.val)!
                newListNode.next = ListNode.init(0)
                newListNode = newListNode.next!
                list2 = list2?.next
            }
        }
        if list1 != nil {
            newListNode.val = (list1?.val)!
            newListNode.next = list1?.next
        }
        if list2 != nil {
            newListNode.val = (list2?.val)!
            newListNode.next = list2?.next
        }
        return headPointer
    }
}


