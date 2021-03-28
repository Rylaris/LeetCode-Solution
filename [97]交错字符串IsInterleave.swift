class Solution {
    func isInterleave(_ s1: String, _ s2: String, _ s3: String) -> Bool {
        let s1 = Array(s1), s2 = Array(s2), s3 = Array(s3)
        guard s1.count + s2.count == s3.count else { return false }
        var result = [Bool](repeating: false, count: s2.count + 1)
        result[0] = true
        for i in 0...s1.count {
            for j in 0...s2.count {
                if i > 0 {
                    result[j] = result[j] && s1[i - 1] == s3[i - 1 + j]
                }
                if j > 0 {
                    result[j] = result[j] || (result[j - 1] && s2[j - 1] == s3[i - 1 + j])
                }
            }
        }
        return result.last ?? false
    }
}
