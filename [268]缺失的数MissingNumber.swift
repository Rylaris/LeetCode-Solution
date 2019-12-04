class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        var sum = (0 + nums.count) * (nums.count + 1) / 2
        for num in nums {
            sum -= num
        }
        return sum
    }
}
