class Solution {
    func isPalindrome(_ s: String) -> Bool {
        var formatStr: String = ""
        for char in s {
            if char.isLetter || char.isNumber {
                formatStr.append(char)
            }
        }
        formatStr = formatStr.lowercased()
        return formatStr == String(formatStr.reversed())
    }
}
