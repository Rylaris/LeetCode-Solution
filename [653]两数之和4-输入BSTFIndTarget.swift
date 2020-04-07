class Solution {
    func findTarget(_ root: TreeNode?, _ k: Int) -> Bool {
        var map = [Int]()
        func traversalTree(root: TreeNode?) {
            if root == nil {
                return
            }
            traversalTree(root: root?.left)
            map.append(root!.val)
            traversalTree(root: root?.right)
        }
        traversalTree(root: root)
        var index1 = 0, index2 = map.count - 1
        while index1 != index2 {
            let sum = map[index1] + map[index2]
            if sum == k {
                return true
            } else if sum > k {
                index2 -= 1
            } else {
                index1 += 1
            }
        }
        return false
    }
}
