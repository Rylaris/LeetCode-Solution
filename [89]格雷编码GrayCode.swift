class Solution {
    func grayCode(_ n: Int) -> [Int] {
        guard n > 0 else {
            return [0]
        }
        var result = [0]
        var delta = 1
        for _ in 1...n {
            for j in result.indices {
                result.append(result[delta - j - 1] + delta)
            }
            delta <<= 1
        }
        return result
    }
}
