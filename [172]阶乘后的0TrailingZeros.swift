class Solution {
    func trailingZeroes(_ n: Int) -> Int {
        if n < 5 {
            return 0
        }
        var temp = 5
        var numOfZero = 0
        while temp < n {
            numOfZero += n / temp
            temp *= 5
        }
        return numOfZero
    }
}
