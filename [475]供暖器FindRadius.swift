class Solution {
    func findRadius(_ houses: [Int], _ heaters: [Int]) -> Int {
        let a = houses.sorted()
        let b = heaters.sorted()
        var maxDistance = Int.min
        for house in a {
            var leftIndex = 0, rightIndex = b.count - 1
            var mid = (leftIndex + rightIndex) / 2
            var minDistance = 0
            while leftIndex < rightIndex {
                if b[mid] < house {
                    leftIndex = mid
                } else if b[mid] > house {
                    rightIndex = mid
                } else {
                    leftIndex = mid
                    rightIndex = mid
                }
                if rightIndex - 1 == leftIndex {
                    break
                }
                mid = (leftIndex + rightIndex) / 2
            }
            minDistance = min(abs(house - b[leftIndex]), abs(b[rightIndex] - house))
            maxDistance = max(maxDistance, minDistance)
        }
        return maxDistance
    }
}

