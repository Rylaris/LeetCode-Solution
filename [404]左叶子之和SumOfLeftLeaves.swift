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
    func sumOfLeftLeaves(_ root: TreeNode?) -> Int {
        return temp(root, isLeft: false)
    }
    
    func temp(_ root: TreeNode?, isLeft flag: Bool) -> Int {
        guard root != nil else {
            return 0
        }
        if flag && root?.left == nil && root?.right == nil {
            return root!.val
        }
        return temp(root?.left, isLeft: true) + temp(root?.right, isLeft: false)
    }
}
