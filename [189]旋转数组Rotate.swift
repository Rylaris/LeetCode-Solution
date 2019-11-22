class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        let p = k % nums.count

        var begin = 0, end = nums.count - 1
        while begin < end {
            let temp = nums[begin]
            nums[begin] = nums[end]
            nums[end] = temp
            begin += 1
            end -= 1
        }
        begin = 0
        end = p - 1
        while begin < end {
            let temp = nums[begin]
            nums[begin] = nums[end]
            nums[end] = temp
            begin += 1
            end -= 1
        }
        begin = p
        end = nums.count - 1
        while begin < end {
            let temp = nums[begin]
            nums[begin] = nums[end]
            nums[end] = temp
            begin += 1
            end -= 1
        }
    }
}
