class Solution {
    class func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
        var result = nums
        var a = [Int]()
        for num in result {
            result[abs(num) - 1] = -(abs(result[num - 1]))
        }
        for i in 0..<result.count {
            if result[i] > 0 {
                a.append(i + 1)
            }
        }
        return a
    }
}
