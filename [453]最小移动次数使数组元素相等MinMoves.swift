class Solution {
    func minMoves(_ nums: [Int]) -> Int {
        // 动态规划法
        var n = nums.sorted()
        var times = 0
        for i in 1..<n.count {
            n[i] += times
            times += n[i] - n[0]
            n[0] += n[i] - n[0]
        }
        return times
        
        // 数学法
        var min = Int.max
        var times = 0
        for num in nums {
            if num < min {
                min = num
            }
        }
        for num in nums {
            times += num - min
        }
        return times
    }
}
