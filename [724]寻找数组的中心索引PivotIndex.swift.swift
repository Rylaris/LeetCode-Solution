class Solution {
    func pivotIndex(_ nums: [Int]) -> Int {
        if nums.count < 3 {
            return -1
        }
        var sum = 0
        for num in nums {
            sum += num
        }
        var index = 0, leftSum = 0
        while index < nums.count {
            if leftSum == sum - leftSum - nums[index] {
                return index
            }
            leftSum += nums[index]
            index += 1
        }
        return -1
    }
}
