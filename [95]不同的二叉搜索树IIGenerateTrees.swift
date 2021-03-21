class Solution {
    var map = [ClosedRange<Int>: [TreeNode?]]()
    
    func generateTrees(_ n: Int) -> [TreeNode?] {
        return trees(1...n)
    }
    
    func trees(_ range: ClosedRange<Int>) -> [TreeNode?] {
        if let temp = map[range] {
            return temp
        }
        var result = [TreeNode?]()
        for i in range {
            let left: [TreeNode?] = i - 1 >= range.lowerBound ? trees(range.lowerBound...i - 1) : [nil]
            let right: [TreeNode?] = i + 1 <= range.upperBound ? trees(i + 1...range.upperBound) : [nil]
            for subLeftTree in left {
                for subRightTree in right {
                    let newTree = TreeNode(i)
                    newTree.left = subLeftTree
                    newTree.right = subRightTree
                    result.append(newTree)
                }
            }
        }
        map[range] = result
        return result
    }
}
