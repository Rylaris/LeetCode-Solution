class Solution {
    func singleNumbers(_ nums: [Int]) -> [Int] {
        let xorSum = nums.reduce(0, ^)
        var result = [0, 0]
        var flag = 1
        while xorSum & flag == 0 {
            flag <<= 1
        }
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
