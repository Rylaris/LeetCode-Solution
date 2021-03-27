class Solution {
    func canCompleteCircuit(_ gas: [Int], _ cost: [Int]) -> Int {
        var sum = 0
        var minSum = Int.max
        var minIndex = -1
        for i in gas.indices {
            sum += gas[i] - cost[i]
            if sum <= minSum {
                minSum = sum
                minIndex = i
            }
        }
        return sum < 0 ? -1 : (minIndex + 1) % gas.count
    }
}
