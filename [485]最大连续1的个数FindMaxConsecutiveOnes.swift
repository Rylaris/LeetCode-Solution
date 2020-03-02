class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var result = 0
        var temp = 0
        for num in nums {
            if num == 0 {
                result = max(result, temp)
                temp = 0
            } else {
                temp += 1
            }
        }
        return max(result, temp)
    }
}
