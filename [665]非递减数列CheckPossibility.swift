class Solution {
    func checkPossibility(_ nums: [Int]) -> Bool {
        if nums.count <= 2 {
            return true
        }
        if nums.count == 3 {
            return !(nums[0] > nums[1] && nums[1] > nums[2])
        }
        var n = 0
        if nums[0] > nums[1] {
            n += 1
        }
        if nums[nums.count - 1] < nums[nums.count - 2] {
            n += 1
        }
        for i in 1..<nums.count - 2  {
            if nums[i + 1] < nums[i] {
                if nums[i + 1] >= nums[i - 1] || nums[i + 2] >= nums[i] {
                    n += 1
                } else {
                    return false
                }
            }
        }
        return n <= 1
    }
}
