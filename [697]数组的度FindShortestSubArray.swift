class Solution {
    func findShortestSubArray(_ nums: [Int]) -> Int {
        var maps = [Int: (Int,Int,Int)]()
        var maxNum = 0, minLength = Int.max
        for i in 0..<nums.count {
            if maps[nums[i]] == nil {
                maps[nums[i]] = (1,i,i)
            } else {
                maps[nums[i]]!.0 += 1
                maps[nums[i]]!.2 = i
            }
        }
        for key in maps.values {
            if key.0 > maxNum {
                maxNum = key.0
                minLength = key.2 - key.1
            } else if key.0 == maxNum && key.2 - key.1 < minLength{
                minLength = key.2 - key.1
            }
        }
        return minLength + 1
    }
}
