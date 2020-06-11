class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var start = 0, end = height.count - 1
        var result = 0
        while start < end {
            let currentArea = min(height[start], height[end]) * (end - start)
            result = max(result, currentArea)
            if height[start] <= height[end] {
                start += 1
            } else {
                end -= 1
            }
        }
        return result
    }
}
