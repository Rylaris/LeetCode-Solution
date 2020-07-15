class Solution {
    func permute(_ nums: [Int]) -> [[Int]] {
        if nums.count <= 1 {
            return [nums]
        }
        var temp = permute([Int](nums[0..<nums.count - 1]))
        let last = nums.last!
        var result = [[Int]]()
        for _ in 0..<temp.count {
            let arr = temp.removeLast()
            for i in 0...arr.count {
                var a = arr
                a.insert(last, at: i)
                result.append(a)
            }
        }
        return result
    }
}
