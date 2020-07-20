class Solution {
    func lemonadeChange(_ bills: [Int]) -> Bool {
        var count = [0,0]
        for bill in bills {
            if bill == 5 {
                count[0] += 1
            } else if bill == 10 {
                if count[0] == 0 {
                    return false
                } else {
                    count[0] -= 1
                    count[1] += 1
                }
            } else {
                if count[0] < 1 || (count[1] == 0 && count[0] < 3) {
                    return false
                } else {
                    if count[1] != 0 {
                        count[1] -= 1
                        count[0] -= 1
                    } else {
                        count[0] -= 3
                    }
                }
            }
        }
        return true
    }
}
