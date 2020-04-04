class Solution {
    func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
        var sum = 0
        var maxAverage: Double
        for i in 0..<k {
            sum += nums[i]
        }
        maxAverage = Double(sum) / Double(k)
        for i in k..<nums.count {
            sum = sum - nums[i - k] + nums[i]
            maxAverage = max(maxAverage, Double(sum) / Double(k))
        }
        return maxAverage
    }
}
