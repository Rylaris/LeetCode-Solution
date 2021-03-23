class Solution {
    // 自顶向下
    func minimumTotal(_ triangle: [[Int]]) -> Int {
        var path = triangle
        for row in 1..<path.endIndex {
            path[row][0] += path[row - 1].first ?? 0
            for col in 1..<path[row].endIndex - 1 {
                path[row][col] += min(path[row - 1][col], path[row - 1][col - 1])
            }
            path[row][path[row].endIndex - 1] += path[row - 1].last ?? 0
        }
        return path.last?.min() ?? 0
    }
    
    // 自底向上
    func minimumTotal(_ triangle: [[Int]]) -> Int {
        var path = [Int](repeating: 0, count: (triangle.last?.count ?? 0) + 1)
        for i in triangle.indices {
            let row = triangle.count - 1 - i
            for col in triangle[row].indices {
                path[col] = triangle[row][col] + min(path[col], path[col + 1])
            }
        }
        return path.first ?? 0
    }
}
