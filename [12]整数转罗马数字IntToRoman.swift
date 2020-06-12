class Solution {
    func intToRoman(_ num: Int) -> String {
        var result = ""
        var n = num
        let map = [1: "I", 4: "IV", 5: "V", 9: "IX", 10: "X", 40: "XL", 50: "L",
                   90: "XC", 100: "C", 400: "CD", 500: "D", 900: "CM", 1000: "M"]
        let order = [1, 4, 5, 9, 10, 40, 50, 90, 100, 400, 500, 900, 1000]
        var index = order.count - 1
        while n != 0 {
            if order[index] <= n {
                n -= order[index]
                result.append(map[order[index]]!)
            } else {
                index -= 1
            }
        }
        return result
    }
}
