import Foundation

class Solution {
    var isNegative = false
    
    func myAtoi(_ str: String) -> Int {
        let string = preProcessString(str)
        var result = 0
        for i in 0..<string.count {
            let value = Int(string[string.count - 1 - i].asciiValue!) - 48
            let times = i > 18 ? Int(pow(10.0, 18.0)) : Int(pow(10.0, Double(i)))
            result += value * times
            if result > Int32.max && !isNegative {
                return Int(Int32.max)
            }
            if -result < Int32.min && isNegative {
                return Int(Int32.min)
            }
        }
        return isNegative ? -result : result
    }
    
    func preProcessString(_ string: String) -> [Character] {
        let prefix = Set<Character>(arrayLiteral: "-", "+")
        var result = [Character]()
        var hasNumber = false
        for char in string {
            // 如果还没出现过数字，并且是符号，就处理符号
            if !hasNumber && prefix.contains(char) {
                isNegative = char == "-" ? true : false
                hasNumber = true
            }
            // 如果是数字，添加到结果中
            else if char.isNumber {
                hasNumber = true
                result.append(char)
            }
            // 如果出现过数字，但是当前不是数字，结束
            else if hasNumber && !char.isNumber {
                break
            }
            // 如果当前是非符号和空格以外的字符，且没出现过数字，结束
            else if !hasNumber && !char.isNumber && !prefix.contains(char) && char != " "{
                break
            }
        }
        return result
    }
}

