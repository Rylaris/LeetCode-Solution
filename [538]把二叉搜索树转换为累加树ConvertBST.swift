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
    var sum = 0
    
    func convertBST(_ root: TreeNode?) -> TreeNode? {
        traversal(root)
        return root
    }
    
    func traversal(_ root: TreeNode?) {
        if root == nil {
            return
        }
        traversal(root?.right)
        sum += root!.val
        root?.val = sum
        traversal(root?.left)
    }
}
