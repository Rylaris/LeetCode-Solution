class Solution {
    func firstUniqChar(_ s: String) -> Int {
        let string = Array(s)
        var array = [Int](repeating: 0, count: 26)
        for i in 0..<string.count {
            let ascii = string[i].asciiValue! - 97
            array[Int(ascii)] += 1
        }
        for i in 0..<string.count {
            let ascii = string[i].asciiValue! - 97
            if array[Int(ascii)] == 1 {
                return i
            }
        }
        return -1
    }
}
