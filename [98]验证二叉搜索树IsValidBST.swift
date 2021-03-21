class Solution {
    func isValidBST(_ root: TreeNode?) -> Bool {
        return valid(root, min: Int.min, max: Int.max)
    }
    
    func valid(_ root: TreeNode?, min: Int, max: Int) -> Bool {
        guard let root = root else {
            return true
        }
        if root.val < min || root.val > max {
            return false
        } else {
            return valid(root.left, min: min, max: root.val - 1) &&
                valid(root.right, min: root.val + 1, max: max)
        }
    }
}
