class Solution {
    func compareVersion(_ version1: String, _ version2: String) -> Int {
        var arr1 = version1.split(separator: ".").compactMap { Int($0) }
        var arr2 = version2.split(separator: ".").compactMap { Int($0) }
        while !arr1.isEmpty && !arr2.isEmpty {
            if arr1[0] < arr2[0] {
                return -1
            } else if arr1[0] > arr2[0] {
                return 1
            }
            arr1 = Array(arr1.dropFirst())
            arr2 = Array(arr2.dropFirst())
        }
        if arr1.contains(where: { $0 != 0 }) {
            return 1
        }
        if arr2.contains(where: { $0 != 0 }) {
            return -1
        }
        return 0
    }
}
