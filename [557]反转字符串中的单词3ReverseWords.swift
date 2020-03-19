class Solution {
    func reverseWords(_ s: String) -> String {
        var result = ""
        var temp = ""
        for char in s {
            if char == " " {
                result += temp
                result += " "
                temp = ""
            } else {
                temp.insert(char, at: temp.startIndex)
            }
        }
        if temp != "" {
            result += temp
        }
        return result
    }
}
