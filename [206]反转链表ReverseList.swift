class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        if head == nil && head?.next == nil {
            return head
        }
        var nodes = [Int]()
        var node = head
        while node != nil {
            nodes.append(node!.val)
            node = node?.next
        }
        let reverseNode = ListNode(nodes.last!)
        nodes.removeLast()
        node = reverseNode
        while !nodes.isEmpty {
            node?.next = ListNode(nodes.last!)
            node = node?.next
            nodes.removeLast()
        }
        return reverseNode
    }
}
