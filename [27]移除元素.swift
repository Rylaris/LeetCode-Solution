class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        if nums == nil {
            return 0
        }
        var pointer = 0
        while pointer < nums.count {
            if nums[pointer] == val {
                nums.remove(at: pointer)
            } else {
                pointer += 1
            }
        }
        return nums.count
    }
}
