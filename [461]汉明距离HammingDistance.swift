class Solution {
    func hammingDistance(_ x: Int, _ y: Int) -> Int {
        var a = x ^ y
        var result = 0
        while a != 0 {
            a &= a - 1
            result += 1
        }
        return result
    }
}
