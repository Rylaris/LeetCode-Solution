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
    func findTilt(_ root: TreeNode?) -> Int {
        var tilt = 0
        func traversalTree(_ root: TreeNode?) -> Int {
            if root == nil {
                return 0
            }
            let leftSum = traversalTree(root?.left)
            let rightSum = traversalTree(root?.right)
            tilt += abs(leftSum - rightSum)
            return leftSum + rightSum + root!.val
        }
        traversalTree(root)
        return tilt
    }
}
