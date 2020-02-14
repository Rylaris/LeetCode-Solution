import Foundation

class Solution {
    func numberOfBoomerangs(_ points: [[Int]]) -> Int {
        var index1 = 0, index2 = 0
        var distances = [Int: Int]()
        var result = 0
        while index1 < points.count {
            index2 = 0
            distances = [Int: Int]()
            while index2 < points.count {
                if index2 == index1 {
                    index2 += 1
                    continue
                }
                if distances[distance(point1: points[index1], point2: points[index2])] != nil {
                    result += distances[distance(point1: points[index1], point2: points[index2])]! * 2
                    distances[distance(point1: points[index1], point2: points[index2])]! += 1
                } else {
                    distances[distance(point1: points[index1], point2: points[index2])] = 1
                }
                index2 += 1
            }
            index1 += 1
        }
        return result
    }
    
    func distance(point1: [Int], point2: [Int]) -> Int {
        let deltaX = point1[0] - point2[0]
        let deltaY = point1[1] - point2[1]
        return (deltaX) * (deltaX) + (deltaY) * (deltaY)
    }
}
