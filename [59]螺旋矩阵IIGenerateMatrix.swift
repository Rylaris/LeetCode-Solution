class Solution {
    func generateMatrix(_ n: Int) -> [[Int]] {
        var result = [[Int]](repeating: [Int](repeating: 0, count: n), count: n)
        var up = 0, down = n
        var count = 1
        while up < down {
            if up == down - 1 {
                result[up][up] = count
            }
            for i in up..<down {
                result[up][i] = count
                count += 1
            }
            for i in up + 1..<down {
                result[i][down - 1] = count
                count += 1
            }
            for i in 0...down - 2 - up {
                result[down - 1][down - 2 - i] = count
                count += 1
            }
            for i in 0..<down - 2 - up {
                result[down - 2 - i][up] = count
                count += 1
            }
            up += 1
            down -= 1
        }
        return result
    }
}
