class Solution {
    func fractionToDecimal(_ numerator: Int, _ denominator: Int) -> String {
        var map = [Int: (Int, Int)]()
        let sign = (numerator >= 0 && denominator >= 0) || (numerator < 0 && denominator < 0) || numerator == 0
        var numerator = abs(numerator)
        let denominator = abs(denominator)
        var firstLoop = true
        var result = ""
        while true {
            var (quotient, remainder) = (0, 0)
            if var (q, r) = map[numerator] {
                var temp = Int.max
                var loop = ""
                while temp != numerator {
                    loop.append(q.description)
                    temp = r * 10
                    (q, r) = map[temp]!
                }
                result.replaceSubrange(result.index(result.endIndex, offsetBy: -loop.count)..<result.endIndex, with: "(\(loop))")
                if !sign {
                    result = "-\(result)"
                }
                return result
            }
            (quotient, remainder) = numerator.quotientAndRemainder(dividingBy: denominator)
            map[numerator] = (quotient, remainder)
            result.append(quotient.description)
            numerator = remainder * 10
            if numerator == 0 {
                break
            }
            if firstLoop {
                result.append(".")
                firstLoop = false
            }
        }
        if !sign {
            result = "-\(result)"
        }
        return result
    }
}
