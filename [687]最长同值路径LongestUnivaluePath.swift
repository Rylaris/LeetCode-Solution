class Solution {
    var maxLength = 0
    
    func longestUnivaluePath(_ root: TreeNode?) -> Int {
        pathLength(root)
        return maxLength
    }
    
    func pathLength(_ root: TreeNode?) -> Int {
        guard let node = root else {
            return 0
        }
        let left = pathLength(node.left)
        let right = pathLength(node.right)
        var leftPart = 0, rightPart = 0
        if node.val == node.left?.val {
            leftPart += left + 1
        }
        if node.val == node.right?.val {
            rightPart += right + 1
        }
        maxLength = max(maxLength, leftPart + rightPart)
        return max(leftPart, rightPart)
    }
}
