class Solution {
    func findRepeatNumber(_ nums: [Int]) -> Int {
        var map = [Int: Int]()
        for num in nums {
            if map[num] == 1 {
                return num
            } else {
                map[num] = 1
            }
        }
        return 0
    }
}
