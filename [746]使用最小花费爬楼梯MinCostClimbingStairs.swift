class Solution {
    func minCostClimbingStairs(_ cost: [Int]) -> Int {
        var temp1 = cost[0], temp2 = cost[1]
        for i in 2..<cost.count {
            var temp3 = min(temp1, temp2) + cost[i]
            (temp1, temp2) = (temp2, temp3)
        }
        return min(temp1, temp2)
    }
}
