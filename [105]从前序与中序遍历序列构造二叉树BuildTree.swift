class Solution {
    var map = [Int: Int]()
    var preorder = [Int]()
    var inorder = [Int]()
    func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
        for (index, num) in inorder.enumerated() {
            map[num] = index
        }
        self.preorder = preorder
        self.inorder = inorder
        return build(preorder: preorder.indices, inorder: inorder.indices)
    }

    func build(preorder: Range<Int>, inorder: Range<Int>) -> TreeNode? {
        if preorder.isEmpty { return nil }
        let root = self.preorder[preorder.lowerBound]
        let tree = TreeNode(root)
        if let index = map[root] {
            let leftInorder = inorder.lowerBound..<index
            let rightInorder = (index + 1)..<inorder.upperBound
            let leftPreorder = preorder.lowerBound + 1..<preorder.lowerBound + 1 + leftInorder.count
            let rightPreorder = leftPreorder.upperBound..<preorder.upperBound
            tree.left = build(preorder: leftPreorder, inorder: leftInorder)
            tree.right = build(preorder: rightPreorder, inorder: rightInorder)
        }
        return tree
    }
}
