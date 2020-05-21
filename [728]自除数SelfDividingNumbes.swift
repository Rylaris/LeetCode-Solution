class Solution {
    func selfDividingNumbers(_ left: Int, _ right: Int) -> [Int] {
        var result = [Int]()
        for num in left...right {
            if isSelfDividingNumbers(num) {
                result.append(num)
            }
        }
        return result
    }
    
    func isSelfDividingNumbers(_ num: Int) -> Bool {
        var temp = num
        while temp > 0 {
            let digit = temp % 10
            if digit == 0 || num % digit != 0 {
                return false
            }
            temp = temp / 10
        }
        return true
    }
}

