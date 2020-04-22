class KthLargest {
    class LinkedListNode {
        var val: Int?
        var nextNode: LinkedListNode?
        var lastNode: LinkedListNode?
        init() {
            self.val = nil
            self.nextNode = nil
            self.lastNode = nil
        }
    }
    
    var head: LinkedListNode?
    var tail: LinkedListNode?
    var k: Int
    
    init(_ k: Int, _ nums: [Int]) {
        self.k = k
        let nums = [Int](nums.sorted().reversed())
        head = LinkedListNode()
        head?.val = Int.max
        head?.lastNode = nil
        var temp = head
        for i in 0..<nums.count {
            temp?.nextNode = LinkedListNode()
            temp?.nextNode?.val = nums[i]
            temp?.nextNode?.lastNode = temp
            temp = temp?.nextNode
        }
        temp?.nextNode = LinkedListNode()
        temp?.nextNode?.lastNode = temp
        tail = temp?.nextNode
        tail?.val = Int.min
    }
    
    func add(_ val: Int) -> Int {
        var temp = head
        while !((temp?.val)! >= val && (temp?.nextNode?.val)! <= val) {
            temp = temp?.nextNode
        }
        let newNode = LinkedListNode()
        newNode.val = val
        newNode.nextNode = temp?.nextNode
        newNode.lastNode = temp
        temp?.nextNode?.lastNode = newNode
        temp?.nextNode = newNode
        return getVal(at: k)
    }
    
    func getVal(at position: Int) -> Int {
        var temp = head
        for _ in 0..<position {
            temp = temp?.nextNode
        }
        return (temp?.val)!
    }
}
