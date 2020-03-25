import Foundation

class Solution {
    func isSubtree(_ s: TreeNode?, _ t: TreeNode?) -> Bool {
        return traversalStr(s).contains(traversalStr(t))
    }
    
    func traversalStr(_ tree: TreeNode?) -> String {
        var str = ""
        if tree == nil {
            return ""
        }
        if tree?.left == nil {
            str.append("lnill")
        } else {
            str.append(traversalStr(tree?.left))
        }
        if tree?.right == nil {
            str.append("rnill")
        } else {
            str.append(traversalStr(tree?.right))
        }
        str.append("#\(tree!.val.description)#")
        return str
    }
}
