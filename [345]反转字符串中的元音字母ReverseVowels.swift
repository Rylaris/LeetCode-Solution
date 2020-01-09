class Solution {
    class func reverseVowels(_ s: String) -> String {
        let vowels = Set("aeiouAEIOU")
        var string = Array(s)
        var begin = 0, end = string.count - 1
        while begin < end {
            let beginIsVowels = vowels.contains(string[begin])
            let endIsVowels = vowels.contains(string[end])
            if beginIsVowels && endIsVowels {
                (string[begin], string[end]) = (string[end], string[begin])
                begin += 1
                end -= 1
            }
            if !beginIsVowels {
                begin += 1
            }
            if !endIsVowels {
                end -= 1
            }
        }
        return String(string)
    }
}
