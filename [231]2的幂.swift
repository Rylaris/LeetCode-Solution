import Foundation

class Solution {
    func isPowerOfTwo(_ n: Int) -> Bool {
        // Solution 1
        var power = 0
        while pow(2, power) <= Decimal(n) {
            if pow(2, power) == Decimal(n) {
                return true
            }
            power += 1
        }
        return false
        
        // Solution 2
        var num = n
        while num != 1 {
            if num % 2 != 0 {
                return false
            }
            num /= 2
            if num == 2 {
                return true
            }
        }
        return true
        
        // Solution 3
        let num = n - 1
        return n > 0 && (n & num == 0)
    }
}
