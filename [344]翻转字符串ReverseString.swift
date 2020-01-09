class Solution {
    class func reverseString(_ s: inout [Character]) {
        var begin = 0, end = s.count - 1
        while begin < end {
            let temp = s[begin]
            s[begin] = s[end]
            s[end] = temp
            begin += 1
            end -= 1
        }
    }
}
