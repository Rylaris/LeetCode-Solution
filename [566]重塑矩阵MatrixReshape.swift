class Solution {
    class func matrixReshape(_ nums: [[Int]], _ r: Int, _ c: Int) -> [[Int]] {
        if r * c != nums.count * nums[0].count {
            return nums
        }
        var index = 0
        var newNums = [[Int]]()
        var temp = [Int]()
        for num in nums {
            for n in num {
                temp.append(n)
                index += 1
                if index == c {
                    newNums.append(temp)
                    temp = []
                    index = 0
                }
            }
        }
        return newNums
    }
}
