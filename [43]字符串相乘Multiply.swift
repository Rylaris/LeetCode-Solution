class Solution {
    func multiply(_ num1: String, _ num2: String) -> String {
        if num1 == "0" || num2 == "0" {
            return "0"
        }
        let num1 = Array(num1), num2 = Array(num2)
        var arr = [Int](repeating: 0, count: num1.count + num2.count)
        for i in 0..<num2.count {
            let digit2 = num2[num2.count - 1 - i].wholeNumberValue!
            for j in 0..<num1.count {
                let digit1 = num1[num1.count - 1 - j].wholeNumberValue!
                let temp = digit1 * digit2
                arr[i + j] += temp % 10
                arr[i + j + 1] += temp / 10 + (arr[i + j] / 10)
                arr[i + j] %= 10
            }
        }
        var result = ""
        for i in 0..<arr.count {
            result.append(arr[arr.count - 1 - i].description)
        }
        while result.first == "0" {
            result.removeFirst()
        }
        return result
    }
}
