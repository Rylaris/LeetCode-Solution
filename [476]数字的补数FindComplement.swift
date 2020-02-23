class Solution {
    func findComplement(_ num: Int) -> Int {
        var temp = 1
        while temp <= num {
            temp <<= 1
        }
        return temp - 1 - num
    }
}
