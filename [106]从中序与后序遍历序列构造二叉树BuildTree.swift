class Solution {
    
    var map = [Int: Int]()
    var inorder = [Int]()
    var postorder = [Int]()
    
    func buildTree(_ inorder: [Int], _ postorder: [Int]) -> TreeNode? {
        for (index, num) in inorder.enumerated() {
            map[num] = index
        }
        self.inorder = inorder
        self.postorder = postorder
        return build(inorder: inorder.indices, postorder: postorder.indices)
    }
    
    func build(inorder: Range<Int>, postorder: Range<Int>) -> TreeNode? {
        if inorder.isEmpty { return nil }
        let root = self.postorder[postorder.upperBound - 1]
        let rootIndex = map[root]!
        let tree = TreeNode(root)
        let leftInorder = inorder.lowerBound..<rootIndex
        let rightInorder = rootIndex + 1..<inorder.upperBound
        let leftPostorder = postorder.lowerBound..<postorder.lowerBound + leftInorder.count
        let rightPostorder = postorder.lowerBound + leftInorder.count..<postorder.upperBound - 1
        tree.left = build(inorder: leftInorder, postorder: leftPostorder)
        tree.right = build(inorder: rightInorder, postorder: rightPostorder)
        return tree
    }
}
