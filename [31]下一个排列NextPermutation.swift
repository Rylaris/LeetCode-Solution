class Solution {
    func nextPermutation(_ nums: inout [Int]) {
        func findMinIndex(beginIndex: Int) -> Int {
            var minIndex = beginIndex
            var minValue = nums[minIndex]
            for i in beginIndex..<nums.count {
                if nums[i] <= minValue && nums[i] > nums[beginIndex - 1] {
                    minValue = nums[i]
                    minIndex = i
                }
            }
            return minIndex
        }
        
        func reverseArray(from begin: Int) {
            var a = begin, b = nums.count - 1
            while a < b {
                (nums[a], nums[b]) = (nums[b], nums[a])
                a += 1
                b -= 1
            }
        }
        
        var index1 = nums.count - 1
        while index1 > 0 {
            if nums[index1] > nums[index1 - 1] {
                let swapIndex = findMinIndex(beginIndex: index1)
                (nums[index1 - 1], nums[swapIndex]) = (nums[swapIndex], nums[index1 - 1])
                reverseArray(from: index1)
                return
            }
            index1 -= 1
        }
        nums.reverse()
    }
}
