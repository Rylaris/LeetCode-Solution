import Foundation

class Solution {
    class func repeatedStringMatch(_ A: String, _ B: String) -> Int {
        if !Set(B).isSubset(of: Set(A)) {
            return -1
        }
        let times = B.count / A.count
        let str1 = String(repeating: A, count: times)
        let str2 = str1 + A
        let str3 = str2 + A
        if str3.contains(B) {
            if str2.contains(B) {
                if str1.contains(B) {
                    return times
                } else {
                    return times + 1
                }
            } else {
                return times + 2
            }
        } else {
            return -1
        }
    }
}
