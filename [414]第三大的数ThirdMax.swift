class Solution {
    func thirdMax(_ nums: [Int]) -> Int {
        var a = Int.min, b = Int.min, c = Int.min
        for n in nums {
            if n == a || n == b || n == c {
                continue
            }
            if n > a {
                c = b
                b = a
                a = n
            } else if n > b {
                c = b
                b = n
            } else if n > c {
                c = n
            }
        }
        return c == Int.min ? a : c
    }
}
