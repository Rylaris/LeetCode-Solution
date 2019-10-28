class Solution {
    func isValid(_ s: String) -> Bool {
        var brackets = Dictionary<Character,Character>()
        var array = [Character]()
        brackets = ["(": ")","[": "]","{": "}"]
        if s.count % 2 == 1 {
            return false
        }
        for char in s {
            if char == "(" || char == "{" || char == "[" {
                array.append(char)
            }
            else if array.isEmpty || char != brackets[array.last!] {
                return false
            }
            else {
                array.removeLast()
            }
        }
        return array.isEmpty
    }
}
