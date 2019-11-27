class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        // Solution 1  Use Set
        return !(Set<Int>(nums).count == nums.count)
        // Solution 2 Use HashMap
        var map = [Int: Int]()
        for num in nums {
            if map.keys.contains(num) {
                return true
            } else {
                map[num] = 0
            }
        }
        return false
    }
}
