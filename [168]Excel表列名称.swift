class Solution {
    func convertToTitle(_ n: Int) -> String {
        var title: String = ""
        var num = n
        while num > 0 {
            num -= 1
            title.insert(Character(UnicodeScalar(num % 26 + 65)!), at: title.startIndex)
            num /= 26
        }
        return title
    }
}
