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
    
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        guard let root = root else { return [] }
        var queue = Queue<TreeNode?>()
        queue.push(root)
        queue.push(nil)
        var result = [[Int]]()
        result.append([])
        while !queue.isEmpty {
            let temp = queue.pop()
            if temp != nil {
                result[result.endIndex - 1].append(temp!.val)
                if let left = temp!.left {
                    queue.push(left)
                }
                if let right = temp!.right {
                    queue.push(right)
                }
            } else if !queue.isEmpty {
                queue.push(nil)
                result.append([])
            }
            
        }
        return result
    }
}
