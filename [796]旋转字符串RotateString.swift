class Solution {
    func rotateString(_ A: String, _ B: String) -> Bool {
        if A.isEmpty && B.isEmpty {
            return true
        }
        var arr1 = Array(A)
        let arr2 = Array(B)
        for _ in 0..<A.count {
            if arr1 == arr2 {
                return true
            }
            arr1.append(arr1.removeFirst())
        }
        return false
    }
}

