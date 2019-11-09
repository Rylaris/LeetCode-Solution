class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.count <= 1 {
            return nums.count
        }
        var a = 0, b = 1
        while b < nums.count {
            while b < nums.count && nums[a] == nums[b] {
                nums.remove(at: b)
            }
            a += 1
            b += 1
        }
        return nums.count
    }
}
