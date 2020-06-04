class Solution {
    func numMagicSquaresInside(_ grid: [[Int]]) -> Int {
        var result = 0
        if grid.count < 3 || grid[0].count < 3 {
            return 0
        }
        for i in 0..<grid.count - 2 {
            for j in 0..<grid[i].count - 2 {
                let flag = grid[i][j] + grid[i][j + 1] + grid[i][j + 2]
                var nums = Set<Int>()
                var isMagicSquare = true
                for x in i...i + 2 {
                    for y in j...j + 2 {
                        if grid[x][y] > 9 || grid[x][y] < 1 || nums.contains(grid[x][y]) {
                            isMagicSquare = false
                        } else {
                            nums.insert(grid[x][y])
                        }
                    }
                }
                if grid[i][j] + grid[i + 1][j + 1] + grid[i + 2][j + 2] != flag || grid[i + 2][j] + grid[i + 1][j + 1] + grid[i][j + 2] != flag || nums.count != 9 {
                    isMagicSquare = false
                }
                if !isMagicSquare {
                    continue
                }
                for temp in i...i + 2 {
                    if grid[temp][j] + grid[temp][j + 1] + grid[temp][j + 2] != flag {
                        isMagicSquare = false
                        break
                    }
                }
                if !isMagicSquare {
                    continue
                }
                for temp in j...j + 2 {
                    if grid[i][temp] + grid[i + 1][temp] + grid[i + 2][temp] != flag {
                        isMagicSquare = false
                        break
                    }
                }
                if !isMagicSquare {
                    continue
                }
                result += 1
            }
        }
        return result
    }
}

