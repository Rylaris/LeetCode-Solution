class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        guard !nums.isEmpty else {
            return 0
        }
        var index = 1
        var count = 1
        for cur in 1..<nums.count {
            if nums[cur] == nums[cur - 1] {
                count += 1
            } else {
                count = 1
            }
            if count <= 2 {
                nums[index] = nums[cur]
                index += 1
            }
        }
        return index
    }
}
