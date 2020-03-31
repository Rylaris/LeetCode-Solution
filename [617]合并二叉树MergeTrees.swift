class Solution {
    func mergeTrees(_ t1: TreeNode?, _ t2: TreeNode?) -> TreeNode? {
        if t1 == nil {
            return t2
        }
        if t2 == nil {
            return t1
        }
        let tree = TreeNode(t1!.val + t2!.val)
        tree.left = mergeTrees(t1?.left, t2?.left)
        tree.right = mergeTrees(t1?.right, t2?.right)
        return tree
    }
}
