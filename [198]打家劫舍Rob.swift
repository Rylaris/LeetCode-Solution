class Solution {
    func rob(_ nums: [Int]) -> Int {
        if nums.count <= 2 {
            return nums.max() ?? 0
        }
        var maxMoney = nums
        for i in 1..<maxMoney.count {
            if i > 1 {
                maxMoney[i] = maxMoney[i] + maxMoney[i - 2] > maxMoney[i - 1] ? maxMoney[i] + maxMoney[i - 2] : maxMoney[i - 1]
            }
            if maxMoney[i] < maxMoney[i - 1] {
                maxMoney[i] = maxMoney[i - 1]
            }
        }
        return maxMoney.last!
    }
}
