class Solution {
    func addDigits(_ num: Int) -> Int {
        // Solution 1
        if num < 10 {
            return num
        }
        var str = String(num)
        var result = 0
        while str.count > 1 {
            result = 0
            for char in str {
                result += char.wholeNumberValue!
            }
            str = String(result)
        }
        return result
        
        // Solution 2
        return (num - 1) % 9 + 1
    }
}
