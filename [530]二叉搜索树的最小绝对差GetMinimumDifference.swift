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
    var nods = [Int]()
    
    func getMinimumDifference(_ root: TreeNode?) -> Int {
        traversalTree(root)
        var distance = Int.max
        for i in 1..<nods.count {
            distance = min(nods[i] - nods[i - 1], distance)
        }
        return distance
    }
    
    func traversalTree(_ root: TreeNode?) {
        if root != nil {
            traversalTree(root!.left)
            nods.append(root!.val)
            traversalTree(root!.right)
        } else {
            return
        }
    }
}
