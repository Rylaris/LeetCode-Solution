class Solution {
    func rotate(_ matrix: inout [[Int]]) {
        for i in 0..<matrix.count {
            for j in 0..<matrix[i].count {
                (matrix[i][j], matrix[j][i]) = (matrix[j][i], matrix[i][j])
            }
        }
        for i in 0..<matrix.count {
            for j in 0..<matrix[i].count / 2 {
                (matrix[i][j], matrix[i][matrix[i].count - 1 - j]) = (matrix[i][matrix[i].count - 1 - j], matrix[i][j])
            }
        }
    }
}
