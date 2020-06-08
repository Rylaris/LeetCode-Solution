class Solution {
    // 动态规划法
    func longestPalindromeDP(_ s: String) -> String {
        if s.count < 2 {
            return s
        }
        var begin = 0, length = 0
        let str = Array(s)
        var dp = [[Bool]](repeating: [Bool](repeating: false, count: s.count), count: s.count)
        for distance in 0..<s.count {
            for lowerBound in 0..<s.count - distance {
                if str[lowerBound] == str[lowerBound + distance] && (distance < 3 || dp[lowerBound + distance - 1][lowerBound + 1]) {
                    dp[lowerBound + distance][lowerBound] = true
                    if distance >= length {
                        length = distance
                        begin = lowerBound
                    }
                }
            }
        }
        let index1 = s.index(s.startIndex, offsetBy: begin)
        let index2 = s.index(s.startIndex, offsetBy: begin + length)
        return String(s[index1...index2])
    }
    
    // 中心扩散法
    func longestPalindrome(_ s: String) -> String {
        if s.count < 2 {
            return s
        }
        let str = Array(s)
        var begin = 0, length = 0
        for i in 0..<s.count {
            let oddLength = palindromeLength(str, i, i)
            let evenLength = palindromeLength(str, i, i + 1)
            let currentLength = max(oddLength, evenLength)
            if currentLength > length {
                length = currentLength
                begin = i - (length - 1) / 2
            }
        }
        let index1 = s.index(s.startIndex, offsetBy: begin)
        let index2 = s.index(s.startIndex, offsetBy: begin + length - 1)
        return String(s[index1...index2])
    }
    
    func palindromeLength(_ str: [Character], _ left: Int, _ right: Int) -> Int {
        var left = left, right = right
        while left >= 0 && right < str.count && str[left] == str[right] {
            left -= 1
            right += 1
        }
        return right - left - 1
    }
}
