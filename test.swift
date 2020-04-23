class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var begin = 0, end = nums.count - 1
        while begin <= end {
            let mid = (begin + end) / 2
            if nums[mid] < target {
                begin = mid + 1
            } else if nums[mid] > target {
                end = mid - 1
            } else {
                return mid
            }
        }
        return -1
    }
}
