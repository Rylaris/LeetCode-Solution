import Foundation

class Solution {
    func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
        let nums = nums.sorted()
        var minDiff = Int.max
        for i in 0..<nums.count - 2 {
            var left = i + 1
            var right = nums.count - 1
            while left < right {
                let currentSum = nums[i] + nums[left] + nums[right]
                let currentDiff = target - currentSum
                if abs(currentDiff) < abs(minDiff) {
                    minDiff = currentDiff
                }
                if currentSum < target {
                    left += 1
                } else if currentSum > target {
                    right -= 1
                } else {
                    return target
                }
            }
        }
        return target - minDiff
    }
}
