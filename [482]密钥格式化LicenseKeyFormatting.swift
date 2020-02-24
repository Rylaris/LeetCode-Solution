class Solution {
    func licenseKeyFormatting(_ S: String, _ K: Int) -> String {
        var result = ""
        let str = Array(S.uppercased())
        var index = str.count - 1
        var n = 0
        while index >= 0 {
            if str[index] != "-" && n < K {
                n += 1
                result = String(str[index]) + result
            }
            index -= 1
            if n == K && index >= 0 && str[index] != "-" {
                n = 0
                result = "-" + result
            }
        }
        return result
    }
}

