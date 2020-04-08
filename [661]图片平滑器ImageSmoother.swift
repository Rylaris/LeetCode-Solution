class Solution {
    func imageSmoother(_ M: [[Int]]) -> [[Int]] {
        let XSize = M.count, YSize = M[0].count
        func getSum(x: Int, y: Int) -> (Int, Int) {
            var sum = M[x][y], count = 1
            if x != 0 && y != 0 {
                sum += M[x - 1][y - 1]
                count += 1
            }
            if x != XSize - 1 && y != YSize - 1 {
                sum += M[x + 1][y + 1]
                count += 1
            }
            if x != 0 && y != YSize - 1 {
                sum += M[x - 1][y + 1]
                count += 1
            }
            if x != XSize - 1 && y != 0 {
                sum += M[x + 1][y - 1]
                count += 1
            }
            if x > 0 {
                sum += M[x - 1][y]
                count += 1
            }
            if y > 0 {
                sum += M[x][y - 1]
                count += 1
            }
            if x < XSize - 1 {
                sum += M[x + 1][y]
                count += 1
            }
            if y < YSize - 1 {
                sum += M[x][y + 1]
                count += 1
            }
            return (sum, count)
        }
        var result = [[Int]](repeating: [Int](repeating: 0, count: YSize), count: XSize)
        for i in 0..<XSize {
            for j in 0..<YSize {
                let info = getSum(x: i, y: j)
                result[i][j] = info.0 / info.1
            }
        }
        return result
    }
}
