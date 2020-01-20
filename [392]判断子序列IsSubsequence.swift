class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        if s.isEmpty {
            return true
        }
        let array = Array(s)
        var index1 = 0
        for char in t {
            if index1 == array.count {
                return true
            }
            if array[index1] == char {
                index1 += 1
            }
        }
        return index1 == array.count
    }
}
