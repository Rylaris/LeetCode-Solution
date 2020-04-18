import Foundation

class Solution {
    func hasAlternatingBits(_ n: Int) -> Bool {
        var a = 0, b = 0
        for i in 0...Int(log2(Double(n))) {
            if i % 2 == 0 {
                a += Int(pow(Double(2), Double(i)))
            } else {
                b += Int(pow(Double(2),Double(i)))
            }
        }
        return a == n || b == n
    }
}
