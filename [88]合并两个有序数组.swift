/*
 给定两个有序整数数组 nums1 和 nums2，将 nums2 合并到 nums1 中，使得 num1 成为一个有序数组。
 说明:
 初始化 nums1 和 nums2 的元素数量分别为 m 和 n。
 你可以假设 nums1 有足够的空间（空间大小大于或等于 m + n）来保存 nums2 中的元素。
 示例:
 输入:
 nums1 = [1,2,3,0,0,0], m = 3
 nums2 = [2,5,6],       n = 3
 输出: [1,2,2,3,5,6]
 */

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
