class Solution {
    func climbStairs(_ n: Int) -> Int {
        var numOfStairs = Array(repeating: 0, count: n)
        for i in 0..<n {
            if i < 2 {
                numOfStairs[i] = i + 1
            } else {
                numOfStairs[i] = numOfStairs[i - 1] + numOfStairs[i - 2]
            }
        }
        return numOfStairs[n - 1]
    }
}
