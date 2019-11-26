class Solution {
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        let charsS = Array(s)
        let charsT = Array(t)
        var charMap = [Character: Character]()
        for i in 0..<s.count {
            let char1 = charsS[i]
            let char2 = charsT[i]
            if let char = charMap[char1] {
                if char2 != char {
                    return false
                }
            } else if charMap.values.contains(char2) {
                return false
            }
            charMap.updateValue(char2, forKey: char1)
        }
        return true
    }
}
