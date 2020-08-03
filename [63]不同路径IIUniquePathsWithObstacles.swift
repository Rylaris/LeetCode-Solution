class Solution {
    func uniquePathsWithObstacles(_ obstacleGrid: [[Int]]) -> Int {
        var result = [Int](repeating: 0, count: obstacleGrid[0].count)
        for i in 0..<obstacleGrid.count {
            for j in 0..<obstacleGrid[i].count {
                if obstacleGrid[i][j] == 1 {
                    result[j] = 0
                    continue
                }
                if i == 0 && j == 0 {
                    result[j] = 1
                } else if i == 0 {
                    result[j] = result[j - 1]
                } else if j == 0 {
                    result[j] = result[j]
                } else {
                    result[j] += result[j - 1]
                }
            }
        }
        return result.last!
    }
}
