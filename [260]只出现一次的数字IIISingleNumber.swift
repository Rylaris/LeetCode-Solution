class Solution {
    func singleNumber(_ nums: [Int]) -> [Int] {
        let xorSum = nums.reduce(0, ^)
        var result = [0, 0]
        let flag = -xorSum & xorSum
        for num in nums {
            if num & flag == 0 {
                result[0] ^= num
            } else {
                result[1] ^= num
            }
        }
        return result
    }
}
