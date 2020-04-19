class Solution {
    func countBinarySubstrings(_ s: String) -> Int {
        let str = Array(s)
        var count = [Int](repeating: 0, count: 2)
        var result = 0
        var last = -1
        for char in str {
            if char == "0" {
                if last == 1 {
                    count[0] = 0
                }
                count[0] += 1
                if count[1] != 0 {
                    result += 1
                    count[1] -= 1
                }
                last = 0
            }
            if char == "1" {
                if last == 0 {
                    count[1] = 0
                }
                count[1] += 1
                if count[0] != 0 {
                    result += 1
                    count[0] -= 1
                }
                last = 1
            }
        }
        return result
    }
}

