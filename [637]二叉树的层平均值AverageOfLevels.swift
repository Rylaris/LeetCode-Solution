class Solution {
    class func averageOfLevels(_ root: TreeNode?) -> [Double] {
        var trees = [TreeNode?]()
        var result = [Double]()
        trees.append(root)
        var sum = 0
        var count = 0
        while !trees.isEmpty {
            let n = trees.count
            for _ in 0..<n {
                if let tree = trees[0]?.left {
                    trees.append(tree)
                }
                if let tree = trees[0]?.right {
                    trees.append(tree)
                }
                sum += trees[0]!.val
                count += 1
                trees.removeFirst()
            }
            result.append(Double(sum) / Double(count))
            sum = 0
            count = 0
        }
        return result
    }
}
