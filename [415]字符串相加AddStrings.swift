class Solution {
    func addStrings(_ num1: String, _ num2: String) -> String {
        let n1 = Array(num1), n2 = Array(num2)
        var result = [Character]()
        var index1 = n1.count - 1, index2 = n2.count - 1
        var temp = 0
        while index1 >= 0 && index2 >= 0 {
            let digit1: Int! = n1[index1].wholeNumberValue ?? 0
            let digit2: Int! = n2[index2].wholeNumberValue ?? 0
            var digitSum = digit1 + digit2 + temp
            if digitSum >= 10 {
                digitSum -= 10
                temp = 1
                result.append(digitSum.description.first!)
            } else {
                temp = 0
                result.append(digitSum.description.first!)
            }
            index1 -= 1
            index2 -= 1
        }
        while index1 >= 0 {
            let digitSum = n1[index1].wholeNumberValue! + temp
            result.append(digitSum.description.last!)
            temp = digitSum >= 10 ? 1 : 0
            index1 -= 1
        }
        while index2 >= 0 {
            let digitSum = n2[index2].wholeNumberValue! + temp
            result.append(digitSum.description.last!)
            temp = digitSum >= 10 ? 1 : 0
            index2 -= 1
        }
        if temp == 1 {
            result.append(temp.description.first!)
        }
        return String(result.reversed())
    }
}

