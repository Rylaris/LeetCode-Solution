class Solution {
    class func singleNumber(_ nums: [Int]) -> Int {
        var singleNum = nums[0]
        for i in 1..<nums.count {
            singleNum ^= nums[i]
        }
        return singleNum

    }
}
