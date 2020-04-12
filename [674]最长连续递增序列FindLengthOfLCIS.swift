class Solution {
    func findLengthOfLCIS(_ nums: [Int]) -> Int {
        if nums.isEmpty {
            return 0
        }
        var maxLength = 1
        var currentLength = 1
        for i in 0..<nums.count - 1 {
            if nums[i] < nums[i + 1] {
                currentLength += 1
            } else {
                maxLength = max(maxLength, currentLength)
                currentLength = 1
            }
        }
        return max(maxLength, currentLength)
    }
}
