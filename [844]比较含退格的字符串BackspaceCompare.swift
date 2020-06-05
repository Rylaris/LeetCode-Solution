class Solution {
    func backspaceCompare(_ S: String, _ T: String) -> Bool {
        return sortOutStr(str: S).elementsEqual(sortOutStr(str: T))
    }
    
    func sortOutStr(str: String) -> [Character] {
        var stack = [Character]()
        for char in str {
            if char == "#" {
                if !stack.isEmpty {
                    stack.removeLast()
                }
            } else {
                stack.append(char)
            }
        }
        return stack
    }
}

