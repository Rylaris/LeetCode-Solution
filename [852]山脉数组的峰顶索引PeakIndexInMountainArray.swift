class Solution {
    func peakIndexInMountainArray(_ A: [Int]) -> Int {
        var l = 1, r = A.count - 2
        while l <= r {
            let mid = (l + r) / 2
            if A[mid - 1] < A[mid] && A[mid + 1] < A[mid] {
                return mid
            } else if A[mid - 1] < A[mid] {
                l = mid + 1
            } else {
                r = mid - 1
            }
        }
        return -1
    }
}
