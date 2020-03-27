class Solution {
    func maxCount(_ m: Int, _ n: Int, _ ops: [[Int]]) -> Int {
        var minX = m
        var minY = n
        for nums in ops {
            minX = min(minX, nums[0])
            minY = min(minY, nums[1])
        }
        return minX * minY
    }
}
