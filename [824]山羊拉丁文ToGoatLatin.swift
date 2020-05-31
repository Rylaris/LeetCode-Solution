class Solution {
    func toGoatLatin(_ S: String) -> String {
        var result = ""
        let vowels: Set<Character> = Set(arrayLiteral: "a", "e", "i", "o", "u", "A", "E", "I", "O", "U")
        let str = S.split(separator: " ")
        for i in str.indices {
            var newWord = String(str[i])
            if !vowels.contains(newWord.first ?? " ") {
                newWord.append(newWord.removeFirst())
            }
            newWord.append(contentsOf: "ma" + String(repeating: "a", count: i + 1) + " ")
            result.append(contentsOf: newWord)
        }
        result.removeLast()
        return result
    }
}
