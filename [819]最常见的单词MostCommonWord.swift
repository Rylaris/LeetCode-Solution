class Solution {
    func mostCommonWord(_ paragraph: String, _ banned: [String]) -> String {
        let bannedWords = Set(banned)
        var currentWord = ""
        var wordMap = [String: Int]()
        var maxTimes = 0
        var result = ""
        for char in paragraph {
            if char.isLetter {
                currentWord.append(char.lowercased())
            } else if !currentWord.isEmpty {
                wordMap[currentWord] = (wordMap[currentWord] ?? 0) + 1
                currentWord = ""
            }
        }
        if !currentWord.isEmpty {
            wordMap[currentWord] = (wordMap[currentWord] ?? 0) + 1
        }
        for key in wordMap.keys {
            if wordMap[key]! > maxTimes && !bannedWords.contains(key) {
                maxTimes = wordMap[key]!
                result = key
            }
        }
        return result
    }
}

