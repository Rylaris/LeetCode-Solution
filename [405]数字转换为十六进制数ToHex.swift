class Solution {
    func toHex(_ num: Int) -> String {
        let hex = ["0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f"]
        var n = num >= 0 ? num : 1<<32 + num
        var result = ""
        while n > 0 {
            result = hex[n - (n / 16) * 16] + result
            n /= 16
        }
        return num == 0 ? "0" : result
    }
}
