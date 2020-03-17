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
    var maxPath = 0
    
    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
        depthOfBinaryTree(root)
        return maxPath
    }
    
    func depthOfBinaryTree(_ root: TreeNode?) -> Int {
        if root == nil {
            return -1
        }
        let leftPath = depthOfBinaryTree(root?.left)
        let rightPath = depthOfBinaryTree(root?.right)
        maxPath = max(leftPath + rightPath + 2, maxPath)
        return max(leftPath, rightPath) + 1
    }
}
