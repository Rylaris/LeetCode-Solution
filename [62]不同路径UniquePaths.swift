class Solution {
    func uniquePaths(_ m: Int, _ n: Int) -> Int {
        var result = [Int](repeating: 1, count: m)
        for _ in 1..<n {
            for j in 1..<m {
                result[j] += result[j - 1]
            }
        }
        return result.last ?? 1
    }
}
