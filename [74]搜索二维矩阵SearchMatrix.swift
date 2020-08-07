class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        if target < matrix.first?.first ?? Int.max || target > matrix.last?.last ?? Int.min {
            return false
        }
        var left = 0, right = matrix.count - 1
        while left <= right {
            let mid = (left + right) / 2
            if matrix[mid][0] == target {
                return true
            } else if matrix[mid][0] < target {
                left = mid + 1
            } else if matrix[mid][0] > target {
                right = mid - 1
            }
        }
        let subIndex = left - 1
        left = 0
        right = matrix[subIndex].count - 1
        while left <= right {
            let mid = (left + right) / 2
            if matrix[subIndex][mid] == target {
                return true
            } else if matrix[subIndex][mid] < target {
                left = mid + 1
            } else if matrix[subIndex][mid] > target {
                right = mid - 1
            }
        }
        return false
    }
}
