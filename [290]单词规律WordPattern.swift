class Solution {
    func wordPattern(_ pattern: String, _ str: String) -> Bool {
        var patternMap = [Character: String]()
        var strMap = [String: Character]()
        var patternIndex = 0, strIndex = 0
        while patternIndex != pattern.count {
            if strIndex == str.count + 1 { return false }
            var word = ""
            while strIndex != str.count && str[str.index(str.startIndex, offsetBy: strIndex)] != " " {
                word.append(str[str.index(str.startIndex, offsetBy: strIndex)])
                strIndex += 1
            }
            if patternMap[pattern[pattern.index(pattern.startIndex, offsetBy: patternIndex)]] == nil {
                patternMap[pattern[pattern.index(pattern.startIndex, offsetBy: patternIndex)]] = word
            } else if patternMap[pattern[pattern.index(pattern.startIndex, offsetBy: patternIndex)]] != word {
                return false
            }
            if strMap[word] == nil {
                strMap[word] = pattern[pattern.index(pattern.startIndex, offsetBy: patternIndex)]
            } else if strMap[word] != pattern[pattern.index(pattern.startIndex, offsetBy: patternIndex)] {
                return false
            }
            patternIndex += 1
            strIndex += 1
        }
        return strIndex == str.count + 1
    }
}
