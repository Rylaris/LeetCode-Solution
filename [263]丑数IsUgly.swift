class Solution {
    func isUgly(_ num: Int) -> Bool {
        if num < 1 {
            return false
        }
        var n = num
        while n != 1 {
            if n % 2 == 0 {
                n /= 2
                continue
            }
            if n % 3 == 0 {
                n /= 3
                continue
            }
            if n % 5 == 0 {
                n /= 5
                continue
            }
            return false
        }
        return true
    }
}
