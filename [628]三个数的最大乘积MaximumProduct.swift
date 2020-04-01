class Solution {
    func maximumProduct(_ nums: [Int]) -> Int {
        var max = [Int](repeating: Int.min, count: 3)
        var min = [Int](repeating: Int.max, count: 3)
        for num in nums {
            if num > max[0] {
                max.insert(num, at: 0)
            } else if num > max[1] {
                max.insert(num, at: 1)
            } else if num > max[2] {
                max.insert(num, at: 2)
            }
            if num < min[0] {
                min.insert(num, at: 0)
            } else if num < min[1] {
                min.insert(num, at: 1)
            } else if num < min[2] {
                min.insert(num, at: 2)
            }
        }
        let result1 = max[0] * max[1] * max[2]
        let result2 = max[0] * min[0] * min[1]
        return result1 > result2 ? result1 : result2
    }
}
