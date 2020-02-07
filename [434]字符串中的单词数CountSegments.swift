class Solution {
    func countSegments(_ s: String) -> Int {
        var result = 0
        var isChar = false
        for char in s {
            if char != " " && !isChar{
                isChar = true
                result += 1
                continue
            }
            if char == " " && isChar{
                isChar = false
            }
        }
        return result
    }
}
