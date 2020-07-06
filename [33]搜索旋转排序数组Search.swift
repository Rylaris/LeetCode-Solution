class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        if nums.isEmpty {
            return -1
        }
        var begin = 0, end = nums.count - 1
        while begin <= end {
            let mid = (begin + end) / 2
            if nums[mid] == target {
                return mid
            } else if nums[mid] <= nums[end] {
                if target >= nums[mid] && target <= nums[end] {
                    begin = mid + 1
                } else {
                    end = mid - 1
                }
            } else if nums[begin] <= nums[mid] {
                if target >= nums[begin] && target <= nums[mid] {
                    end = mid - 1
                } else {
                    begin = mid + 1
                }
            } else if begin == end && nums[begin] != target {
                break
            }
        }
        return -1
    }
}
