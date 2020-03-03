import Foundation

class Solution {
    class func constructRectangle(_ area: Int) -> [Int] {
        var temp = Int(sqrt(Double(area)))
        while temp <= area {
            if area % temp == 0 {
                return [area / temp, temp]
            } else {
                temp -= 1
            }
        }
        return []
    }
}
