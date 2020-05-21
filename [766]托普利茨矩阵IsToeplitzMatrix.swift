class Solution {
    func isToeplitzMatrix(_ matrix: [[Int]]) -> Bool {
        let x = matrix.count, y = matrix[0].count
        var beginPoint = (x - 2, 0)
        while beginPoint.0 > 0 {
            var pointX = beginPoint.0, pointY = beginPoint.1
            let base = matrix[pointX][pointY]
            while pointX < x && pointY < y {
                if matrix[pointX][pointY] != base {
                    return false
                }
                pointX += 1
                pointY += 1
            }
            beginPoint.0 -= 1
        }
        beginPoint = (0, y - 2)
        while beginPoint.1 >= 0 {
            var pointX = beginPoint.0, pointY = beginPoint.1
            let base = matrix[pointX][pointY]
            while pointX < x && pointY < y {
                if matrix[pointX][pointY] != base {
                    return false
                }
                pointX += 1
                pointY += 1
            }
            beginPoint.1 -= 1
        }
        return true
    }
}
