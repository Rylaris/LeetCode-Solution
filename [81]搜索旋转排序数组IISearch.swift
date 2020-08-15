class Solution {
    func search(_ nums: [Int], _ target: Int) -> Bool {
        var begin = 0, end = nums.count - 1
        while begin <= end {
            let mid = (begin + end) / 2
            if nums[mid] == target {
                return true
            } else if nums[mid] == nums[begin] {
                begin += 1
            } else if nums[mid] < nums[begin] {
                if nums[mid] < target && nums[end] >= target {
                    begin = mid + 1
                } else {
                    end = mid - 1
                }
            } else {
                if nums[begin] <= target && nums[mid] > target {
                    end = mid - 1
                } else {
                    begin = mid + 1
                }
            }
        }
        return false
    }
}
