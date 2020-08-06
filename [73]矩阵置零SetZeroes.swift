class Solution {
    func setZeroes(_ matrix: inout [[Int]]) {
        var isFirstRowZero = false
        for i in matrix.indices {
            for j in matrix[i].indices {
                if matrix[i][j] == 0 {
                    matrix[0][j] = Int.min
                    if i == 0 {
                        isFirstRowZero = true
                    } else {
                        matrix[i][0] = Int.min
                    }
                }
            }
        }
        for i in matrix.dropFirst().indices {
            if matrix[i][0] == Int.min {
                for j in matrix[i].indices {
                    matrix[i][j] = 0
                }
            }
        }
        for i in matrix[0].indices {
            if matrix[0][i] == Int.min {
                for j in matrix.indices {
                    matrix[j][i] = 0
                }
            }
        }
        if isFirstRowZero {
            for i in matrix[0].indices {
                matrix[0][i] = 0
            }
        }
    }
}
