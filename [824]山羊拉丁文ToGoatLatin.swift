class Solution {
    func toGoatLatin(_ S: String) -> String {
        var result = ""
        let str = S.split(separator: " ")
        for i in str.indices {
            var newWord = String(str[i])
            if isVowel(char: str[i].first) {
                newWord.append(contentsOf: "ma")
            } else {
                newWord.append(newWord.removeFirst())
                newWord.append(contentsOf: "ma")
            }
            newWord.append(contentsOf: String(repeating: "a", count: i + 1))
            newWord.append(contentsOf: " ")
            result.append(contentsOf: newWord)
        }
        result.removeLast()
        return result
    }
    
    func isVowel(char: Character?) -> Bool {
        guard let char = char?.lowercased() else {
            return false
        }
        if char == "a" || char == "e" || char == "i" || char == "o" || char == "u" {
            return true
        } else {
            return false
        }
    }
}

