class Solution {
    func transpose(_ A: [[Int]]) -> [[Int]] {
        var a = [[Int]](repeating: [Int](repeating: 0, count: A.count), count: A[0].count)
        for i in A.indices {
            for j in A[i].indices {
                a[j][i] = A[i][j]
            }
        }
        return a
    }
}
