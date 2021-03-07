class Solution {
    func findNumberIn2DArray(_ matrix: [[Int]], _ target: Int) -> Bool {
        guard let first = matrix.first else {
            return false
        }
        var rowIndex = first.endIndex - 1
        var colIndex = 0
        while rowIndex >= 0 && colIndex < matrix.count {
            if matrix[colIndex][rowIndex] == target {
                return true
            } else if matrix[colIndex][rowIndex] > target {
                rowIndex -= 1
            } else {
                colIndex += 1
            }
        }
        return false
    }
}
