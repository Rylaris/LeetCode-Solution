class Solution {
    class func isPerfectSquare(_ num: Int) -> Bool {
        if num == 1 {
            return true
        }
        var left = 0, right = num / 2
        while left <= right {
            let mid = (left + right) / 2
            if mid * mid > num {
                right = mid - 1
            }
            if mid * mid < num {
                left = mid + 1
            }
            if mid * mid == num {
                return true
            }
        }
        return false
    }
}
