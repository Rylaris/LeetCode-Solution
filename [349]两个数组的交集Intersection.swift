class Solution {
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var result: [Int] = []
        var map = [Int: Int]()
        for num in nums1 {
            if !map.keys.contains(num) {
                map[num] = 0
            }
        }
        for num in nums2 {
            if map.keys.contains(num) && map[num] == 0 {
                map[num]! += 1
                result.append(num)
            }
        }
        return result
    }
}
