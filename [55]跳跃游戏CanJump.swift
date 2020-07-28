class Solution {
    func canJump(_ nums: [Int]) -> Bool {
        var maxDistance = 0
        for i in nums.indices {
            if i <= maxDistance {
                maxDistance = max(maxDistance, i + nums[i])
            }
        }
        return maxDistance >= nums.count - 1
    }
}
