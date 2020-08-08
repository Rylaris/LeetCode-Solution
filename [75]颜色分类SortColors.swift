class Solution {
    func sortColors(_ nums: inout [Int]) {
        var left = 0, right = nums.count - 1
        var index = 0
        while index <= right {
            switch nums[index] {
            case 0:
                nums.swapAt(left, index)
                left += 1
                index += 1
            case 2:
                nums.swapAt(right, index)
                right -= 1
            default:
                index += 1
            }
        }
    }
}
