class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        if nums.count < 3 {
            return []
        }
        let nums = nums.sorted()
        var result = Set<[Int]>()
        for i in 0..<nums.count {
            if nums[i] > 0 {
                break
            }
            if i > 0 && nums[i] == nums[i - 1] {
                continue
            }
            var left = i + 1
            var right = nums.count - 1
            while left < right {
                let sum = nums[i] + nums[left] + nums[right]
                if sum > 0 {
                    right -= 1
                } else if sum < 0 {
                    left += 1
                } else {
                    result.insert([nums[i], nums[left], nums[right]])
                    left += 1
                    right -= 1
                    while left < right && nums[left] == nums[left - 1] {
                        left += 1
                    }
                    while left < right && nums[right] == nums[right + 1] {
                        right -= 1
                    }
                }
            }
        }
        return [[Int]](result)
    }
}

