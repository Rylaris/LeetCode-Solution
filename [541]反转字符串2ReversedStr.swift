class Solution {
    func reverseStr(_ s: String, _ k: Int) -> String {
        var result = ""
        var str = s
        while result.count < s.count {
            if str.count >= 2 * k {
                let temp = String(str.dropLast(str.count - 2 * k))
                str.removeFirst(2 * k)
                result += String(temp.dropLast(k)).reversed() + temp.dropFirst(k)
            } else if str.count >= k {
                result += String(str.dropLast(str.count - k)).reversed()
                str.removeFirst(k)
                result += str
            } else {
                result += str.reversed()
            }
        }
        return result
    }
}
