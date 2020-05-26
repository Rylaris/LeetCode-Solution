import Foundation

class Solution {
    func largestTriangleArea(_ points: [[Int]]) -> Double {
        var maxArea = 0.0
        for a in points {
            for b in points {
                for c in points {
                    let area = Double(abs((a[0] * b[1] + b[0] * c[1] + c[0] * a[1]) - (a[1] * b[0] + b[1] * c[0] + c[1] * a[0]))) * 0.5
                    maxArea = max(maxArea, area)
                }
            }
        }
        return maxArea
    }
}


