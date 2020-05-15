class Solution {
    func dominantIndex(_ nums: [Int]) -> Int {
        if nums.count < 2 {
            return 0
        }
        var first: Int, second: Int
        (first, second) = nums[0] > nums[1] ? (0, 1) : (1, 0)
        for i in 2..<nums.count {
            if nums[i] >= nums[first] {
                (first, second) = (i, first)
            } else if nums[i] >= nums[second] {
                second = i
            }
        }
        return nums[first] >= 2 * nums[second] ? first : -1
    }
}
