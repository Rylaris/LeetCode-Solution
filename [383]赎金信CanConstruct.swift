class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var map = [Int](repeating: 0, count: 26)
        for char in magazine {
            let ascii = char.asciiValue! - 97
            map[Int(ascii)] += 1
        }
        for char in ransomNote {
            let ascii = char.asciiValue! - 97
            if map[Int(ascii)] == 0 {
                return false
            }
            map[Int(ascii)] -= 1
        }
        return true
    }
}
