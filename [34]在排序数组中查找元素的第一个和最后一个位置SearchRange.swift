class Solution {
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        var l = 0, r = nums.count - 1
        var leftBound = -1, rightBound = -1
        while l <= r {
            let mid = (l + r) / 2
            if nums[mid] == target {
                r = mid - 1
            } else if nums[mid] < target {
                l = mid + 1
            } else if nums[mid] > target {
                r = mid - 1
            }
        }
        leftBound = l
        if l >= nums.count || nums[l] != target {
            leftBound = -1
        }
        
        l = 0
        r = nums.count - 1
        while l <= r {
            let mid = (l + r) / 2
            if nums[mid] == target {
                l = mid + 1
            } else if nums[mid] < target {
                l = mid + 1
            } else if nums[mid] > target {
                r = mid - 1
            }
        }
        rightBound = r
        if r < 0 || nums[r] != target {
            rightBound = -1
        }
        return [leftBound, rightBound]
    }
}
