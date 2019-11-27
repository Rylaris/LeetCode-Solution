class Solution {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        var map = [Int: Int]()
        for i in 0..<nums.count {
            if map.keys.contains(nums[i]) && i - map[nums[i]]! <= k {
                return true
            }
            map[nums[i]] = i
        }
        return false
    }
}
