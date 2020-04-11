class Solution {
    func findSecondMinimumValue(_ root: TreeNode?) -> Int {
        if root == nil {
            return -1
        }
        var min = Int.max
        func traversal(_ tree: TreeNode?) {
            if tree == nil {
                return
            }
            if tree!.val != root!.val && tree!.val < min {
                min = tree!.val
            }
            traversal(tree?.left)
            traversal(tree?.right)
        }
        traversal(root)
        return min == Int.max ? -1 : min
    }
}
