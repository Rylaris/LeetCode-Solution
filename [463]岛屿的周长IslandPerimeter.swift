class Solution {
    func islandPerimeter(_ grid: [[Int]]) -> Int {
        var hasIsland = [Bool](repeating: false, count: grid[0].count)
        var perimeter = 0
        for i in 0..<grid.count {
            for j in 0..<grid[i].count {
                if grid[i][j] == 0 {
                    hasIsland[j] = false
                    continue
                }
                if hasIsland[j] {
                    perimeter -= 2
                }
                if j > 0 && hasIsland[j - 1] {
                    perimeter -= 2
                }
                perimeter += 4
                hasIsland[j] = true
            }
        }
        return perimeter
    }
}
