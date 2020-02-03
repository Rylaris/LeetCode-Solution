class Solution {
    func longestPalindrome(_ s: String) -> Int {
        var map = [Int](repeating: 0, count: 52)
        var result = 0
        for char in s {
            map[Int(char.asciiValue!) - (Int(char.asciiValue!) > 96 ? 97 : 36)] += 1
        }
        var hasOddNum = false
        for n in map {
            if n % 2 != 0 {
                hasOddNum = true
            }
            result += (n % 2 == 0 ? n : n - 1)
        }
        return hasOddNum ? result + 1 : result
    }
}
