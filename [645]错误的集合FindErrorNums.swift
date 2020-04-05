class Solution {
    func findErrorNums(_ nums: [Int]) -> [Int] {
        var map = [Int](repeating: 0, count: nums.count)
        var result = [Int]()
        var sum = (nums.count * (1 + nums.count)) / 2
        for num in nums {
            map[num - 1] += 1
            if map[num - 1] == 2 {
                result.append(num)
            } else {
                sum -= num
            }
        }
        result.append(sum)
        return result
    }
}
