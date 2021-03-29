class Solution {
    
    struct Queue<T> {
        private var array = [T]()
        
        private var top = 0
        
        public mutating func push(_ element: T) {
            array.append(element)
        }
        
        public mutating func pop() -> T {
            top += 1
            return array[top - 1]
        }
        
        public var isEmpty: Bool {
            return top == array.count
        }
    }
    
    func zigzagLevelOrder(_ root: TreeNode?) -> [[Int]] {
        guard let root = root else { return [] }
        var queue = Queue<TreeNode?>()
        var rightOrder = true
        var result = [[Int]]()
        var temp = [Int]()
        var nodes = [TreeNode?]()
        queue.push(root)
        result.append([root.val])
        
        while !queue.isEmpty {
            let tree = queue.pop()
            if let left = tree?.left {
                nodes.append(left)
                temp.append(left.val)
            }
            if let right = tree?.right {
                nodes.append(right)
                temp.append(right.val)
            }
            if queue.isEmpty {
                nodes.forEach { queue.push($0) }
                if !temp.isEmpty {
                    result.append(rightOrder ? temp.reversed() : temp)
                }
                rightOrder.toggle()
                temp.removeAll()
                nodes.removeAll()
            }
        }
        return result
    }
}
