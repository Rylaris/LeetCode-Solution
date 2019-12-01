class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count {
            return false
        }
        var str = [Character: Int]()
        for char in s {
            if str[char] == nil {
                str[char] = 1
            } else {
                str[char]! += 1
            }
        }
        for char in t {
            if str[char] == nil {
                return false
            }
            str[char]! -= 1
            if str[char] == 0 {
                str.removeValue(forKey: char)
            }
        }
        return str.isEmpty
    }
}
