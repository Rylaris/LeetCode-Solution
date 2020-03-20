class Solution {
    func arrayPairSum(_ nums: [Int]) -> Int {
        let n = nums.sorted()
        var sum = 0
        for i in 0..<n.count {
            if i % 2 == 0 {
                sum += n[i]
            }
        }
        return sum
    }
}
