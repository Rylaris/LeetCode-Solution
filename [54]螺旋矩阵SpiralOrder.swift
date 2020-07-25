class Solution {
    func spiralOrder(_ matrix: [[Int]]) -> [Int] {
        if matrix.isEmpty {
            return []
        }
        let x = matrix[0].count, y = matrix.count, count = x * y
        var result = [Int]()
        var x_begin = 0, x_end = x
        var y_begin = 0, y_end = y
        while result.count < count {
            for i in x_begin..<x_end {
                result.append(matrix[y_begin][i])
            }
            for i in y_begin + 1..<y_end {
                result.append(matrix[i][x_end - 1])
            }
            for i in x_begin + 1..<x_end {
                result.append(matrix[y_end - 1][x - 1 - i])
            }
            if y_begin >= y_end - 1 {
                continue
            }
            for i in y_begin + 1..<y_end - 1 {
                result.append(matrix[y - 1 - i][x_begin])
            }
            x_begin += 1
            x_end -= 1
            y_begin += 1
            y_end -= 1
        }
        return [Int](result[0..<count])
    }
}
