import Foundation

class Solution {
    func judgeSquareSum(_ c: Int) -> Bool {
        if c < 3 {
            return true
        }
        for i in 1...Int(sqrt(Double(c))) {
            let square1 = i * i
            let square2 = sqrt(Double(c - i * i))
            if square1 + Int(square2) == c {
                return true
            }
        }
        return false
    }
}
