class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var maxSum = nums[0];
        var sum = 0;
        for num in nums {
            if sum <= 0{
                sum = num
            } else {
                sum += num
            }
            maxSum = maxSum > sum ? maxSum : sum
        }
        return maxSum;
    }
}
