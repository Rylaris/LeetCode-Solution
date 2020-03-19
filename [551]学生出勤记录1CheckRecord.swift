class Solution {
    func checkRecord(_ s: String) -> Bool {
        var aCount = 0, lCount = 0
        for char in s {
            if char == "L" {
                lCount += 1
                if lCount == 3 {
                    return false
                }
                continue
            }
            lCount = 0
            if char == "A" {
                aCount += 1
                if aCount == 2 {
                    return false
                }
            }
        }
        return true
    }
}
