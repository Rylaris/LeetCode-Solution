class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var rightIndex: Int = nums.count - 1
        var leftIndex: Int = 0
        while leftIndex <= rightIndex {
            let center = (leftIndex + rightIndex) / 2
            if nums[center] == target {
                return center
            } else if nums[center] < target {
                leftIndex = center + 1
            } else {
                rightIndex = center - 1
            }
        }
        return leftIndex
    }
}
