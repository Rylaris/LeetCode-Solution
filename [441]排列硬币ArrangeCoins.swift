import Foundation

class Solution {
    func arrangeCoins(_ n: Int) -> Int {
        return Int(pow(2, 0.5) * pow(0.125 + Double(n), 0.5) - 0.5)
    }
}
