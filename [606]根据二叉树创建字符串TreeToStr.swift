class Solution {
    func tree2str(_ t: TreeNode?) -> String {
        if t == nil {
            return ""
        }
        var left = "(\(tree2str(t?.left)))"
        var right = "(\(tree2str(t?.right)))"
        if right == "()" {
            right = ""
            if left == "()" {
                left = ""
            }
        }
        return t!.val.description + left + right
    }
}
