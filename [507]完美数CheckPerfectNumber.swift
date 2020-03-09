import Foundation

class Solution {
    func checkPerfectNumber(_ num: Int) -> Bool {
        if num < 1 {
            return false
        }
        var temp = 1
        for i in 2..<Int(sqrt(Double(num))) + 1 {
            if num % i == 0 {
                temp += i
                temp += num / i
            }
        }
        if Int(sqrt(Double(num))) * Int(sqrt(Double(num))) == num {
            temp += Int(sqrt(Double(num)))
        }
        return temp == num
    }
}
