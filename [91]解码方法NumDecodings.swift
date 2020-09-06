class Solution {
    func numDecodings(_ s: String) -> Int {
        guard s.count > 1 && s.first != "0" else {
            return s.first == "0" ? 0 : 1
        }
        let str = Array(s)
        var result = 1
        var suffix = 1
        for i in 1..<str.count {
            if str[i] == "0" {
                if str[i - 1] == "0" || str[i - 1] > "2" {
                    return 0
                }
                result = suffix
                suffix = 0
            } else if str[i] <= "6" && str[i - 1] <= "2" || str[i - 1] <= "1" {
                let temp = result
                result += suffix
                suffix = temp
            } else {
                suffix = result
            }
        }
        return result
    }
}
