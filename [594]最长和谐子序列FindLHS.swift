class Solution {
    func findLHS(_ nums: [Int]) -> Int {
        var map = [Int: Int]()
        var maxLength = 0
        for num in nums {
            map[num] = (map[num] ?? 0) + 1
            maxLength = max(map[num]! + (map[num + 1] ?? -map[num]!), map[num]! + (map[num - 1] ?? -map[num]!), maxLength)
        }
        return maxLength
    }
}
