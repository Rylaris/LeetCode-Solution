class Solution {
    class func findTheDifference(_ s: String, _ t: String) -> Character {
        // 传统哈希表做法
        var times = [Int](repeating: 0, count: 26)
        for char in s {
            times[Int(char.asciiValue! - 97)] += 1
        }
        for char in t {
            if times[Int(char.asciiValue! - 97)] == 0 {
                return char
            } else {
                times[Int(char.asciiValue! - 97)] -= 1
            }
        }
        return " "
        
        // 位运算做法
        let array = Array(s) + Array(t)
        var char = Int(array[0].asciiValue!)
        for i in 1..<array.count {
            char ^= Int(array[i].asciiValue!)
        }
        return Character(UnicodeScalar(char)!)
    }
}
