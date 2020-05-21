import Foundation

class Solution {
    func countPrimeSetBits(_ L: Int, _ R: Int) -> Int {
        var result = 0
        for i in L...R {
            if isPrimeNum(num: numOf1(num: i)) {
                result += 1
            }
        }
        return 0
    }
    
    func numOf1(num: Int) -> Int {
        var num = num
        var result = 0
        while num != 0 {
            num &= num - 1
            result += 1
        }
        return result
    }
    
    func isPrimeNum(num: Int) -> Bool {
        if num == 1 {
            return false
        }
        if num < 4 {
            return true
        }
        let end = Int(pow(Double(num), 0.5)) + 1
        for i in 2..<end {
            if num % i == 0 {
                return false
            }
        }
        return true
    }
}
