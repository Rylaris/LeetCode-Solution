class Solution {
    class func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var point1 = 0, point2 = 0
        var nums = nums1
        if nums2.count == 0 {
            return
        }
        for i in 0..<nums1.count {
            if point2 == nums2.count {
                nums[i] = nums1[point1]
                point1 += 1
            } else if point1 < m && nums1[point1] < nums2[point2] {
                nums[i] = nums1[point1]
                point1 += 1
            } else if point2 < nums2.count {
                nums[i] = nums2[point2]
                point2 += 1
            }
        }
        nums1 = nums
    }
}
