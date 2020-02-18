class Solution {
    func repeatedSubstringPattern(_ s: String) -> Bool {
        let str = Array(s)
        if s.count == 1 {
            return false
        }
        for i in 1...str.count - 1 {
            if (str.count / i) * i != str.count {
                continue
            }
            let subStr = String(str.dropLast(str.count - i))
            var s = ""
            for _ in 0..<str.count / i {
                s += subStr
            }
            if s == String(str) {
                return true
            }
        }
        return false
    }
}
