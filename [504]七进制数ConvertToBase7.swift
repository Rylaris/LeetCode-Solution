class Solution {
    class func convertToBase7(_ num: Int) -> String {
        if num == 0 {
            return "0"
        }
        let result = num >= 0 ? "" : "-"
        var n = abs(num)
        var digit = ""
        while n > 0 {
            digit += (n % 7).description
            n = (n - (n % 7)) / 7
        }
        return result + String(digit.reversed())
    }
}
