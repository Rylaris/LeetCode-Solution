class Solution {
    func convert(_ s: String, _ numRows: Int) -> String {
        if s.count < numRows || numRows == 1 {
            return s
        }
        
        let str = Array(s)
        var result = ""
        let step = 2 * numRows - 2
        
        for i in 0..<numRows {
            var dif = step - 2 * i
            var begin = i
            while begin < s.count {
                result += String(str[begin])
                if i == 0 || i == numRows - 1 {
                    begin += step
                } else {
                    begin += dif
                    dif = step - dif
                }
            }
        }
        return result
    }
}

