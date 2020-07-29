class Solution {
    func merge(_ intervals: [[Int]]) -> [[Int]] {
        if intervals.isEmpty {
            return []
        }
        let temp = intervals.sorted(by: {(arr1, arr2) -> Bool in
            return arr1[0] < arr2[0]
        })
        var result = [temp[0]]
        var currentRight = temp[0][1]
        for interval in temp {
            if interval[0] <= currentRight {
                result[result.count - 1][1] = max(result[result.count - 1][1], interval[1])
            } else {
                result.append(interval)
            }
            currentRight = result.last![1]
        }
        return result
    }
}
