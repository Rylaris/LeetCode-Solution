class Solution {
    func findUnsortedSubarray(_ nums: [Int]) -> Int {
        var index = [Int]()
        var leftIndex = nums.count - 1
        var rightIndex = 0
        for i in 0..<nums.count {
            while !index.isEmpty && nums[index.last!] > nums[i] {
                leftIndex = min(index.popLast()!,leftIndex)
            }
            index.append(i)
        }
        index.removeAll()
        for i in 1...nums.count {
            while !index.isEmpty && nums[index.last!] < nums[nums.count - i] {
                rightIndex = max(index.popLast()!,rightIndex)
            }
            index.append(nums.count - i)
        }
        return rightIndex <= leftIndex ? 0 : rightIndex - leftIndex + 1
    }
}
