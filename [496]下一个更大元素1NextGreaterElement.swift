class Solution {
    func nextGreaterElement(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var a = nums1, b = nums2
        var map = [Int: Int]()
        for i in 0..<b.count {
            if i == b.count - 1 {
                map[b[i]] = -1
            }
            for j in i..<b.count {
                if b[j] > b[i] {
                    map[b[i]] = b[j]
                    break
                } else if j == b.count - 1 {
                    map[b[i]] = -1
                }
            }
        }
        for i in 0..<a.count {
            a[i] = map[a[i]]!
        }
        return a
    }
}
