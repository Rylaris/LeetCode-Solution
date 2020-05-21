class Solution {
    func rotatedDigits(_ N: Int) -> Int {
        var result = 0
        let flag = [0,0,1,-1,-1,1,1,-1,0,1]
        for i in 1...N {
            var num = i
            var canSpin = true
            var isSame = true
            while num != 0 {
                let digit = num % 10
                if flag[digit] == -1 {
                    canSpin = false
                    break
                } else if flag[digit] == 1 {
                    isSame = false
                }
                num /= 10
            }
            if canSpin && !isSame {
                result += 1
            }
        }
        return result
    }
}

