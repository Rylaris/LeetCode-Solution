class Solution {
    func divide(_ dividend: Int, _ divisor: Int) -> Int {
        if divisor == 0 {
            return 0
        }
        if divisor == 1 {
            return dividend
        }
        if divisor == -1 {
            return dividend > Int32.min ? -dividend : Int(Int32.max)
        }
        let isNegative = (dividend < 0 && divisor > 0) || (dividend > 0 && divisor < 0)
        let result = divid(a: abs(dividend), b: abs(divisor))
        return isNegative ? -result : result
    }
    
    func divid(a: Int, b: Int) -> Int {
        if a < b {
            return 0
        }
        var result = 1
        var nb = b
        while nb + nb < a {
            nb += nb
            result += result
        }
        result += divid(a: a - nb, b: b)
        return result
    }
}
