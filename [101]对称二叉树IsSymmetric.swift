class Solution {
    func isSymmetric(_ root: TreeNode?) -> Bool {
        return isTwoSubtreeSymmetric(left: root?.left, right: root?.right)
    }
    
    func isTwoSubtreeSymmetric(left: TreeNode?, right: TreeNode?) -> Bool {
        if left?.val != right?.val {
            return false
        }
        if left == nil && right == nil {
            return true
        }
        return isTwoSubtreeSymmetric(left: left?.left, right: right?.right)
            && isTwoSubtreeSymmetric(left: left?.right, right: right?.left)
    }
}
