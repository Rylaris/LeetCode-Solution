class Solution {
    class func majorityElement(_ nums: [Int]) -> Int {
        var temp = nums[0]
        var result = 1
        for i in 1..<nums.count {
            result += nums[i] == temp ? 1 : -1
            if result == 0 {
                temp = nums[i + 1]
            }
        }
        return temp
    }
}
