class Solution {
    func minPathSum(_ grid: [[Int]]) -> Int {
        var result = [Int](repeating: 0, count: grid[0].count)
        result[0] = grid[0][0]
        for i in 0..<grid.count {
            for j in 0..<grid[i].count {
                if i == 0 && j == 0 {
                    result[j] = grid[i][j]
                } else if i == 0 {
                    result[j] = grid[i][j] + result[j - 1]
                } else if j == 0 {
                    result[j] += grid[i][j]
                } else {
                    result[j] = grid[i][j] + min(result[j], result[j - 1])
                }
            }
        }
        return result.last!
    }
}
