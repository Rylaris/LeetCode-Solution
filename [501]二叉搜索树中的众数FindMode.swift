public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

class Solution {
    func findMode(_ root: TreeNode?) -> [Int] {
        var map = [Int: Int]()
        func traverseTree(_ root: TreeNode?) {
            if root == nil {
                return
            }
            if map[root!.val] == nil {
                map[root!.val] = 1
            } else {
                map[root!.val]! += 1
            }
            traverseTree(root?.left)
            traverseTree(root?.right)
        }
        traverseTree(root)
        var mode = Int.min
        var result = [Int]()
        for key in map.keys {
            if map[key]! > mode {
                result.removeAll()
                result.append(key)
                mode = map[key]!
            } else if map[key]! == mode {
                result.append(key)
            }
        }
        return result
    }
}
