class Solution {
    func letterCombinations(_ digits: String) -> [String] {
        if digits.count == 0 {
            return []
        }
        let map = ["2":"abc", "3":"def", "4":"ghi", "5":"jkl", "6":"mno", "7":"pqrs", "8":"tuv", "9":"wxyz"]
        var digit: String
        var array: [String]
        if digits.count <= 1 {
            array = [""]
            digit = String(digits.first!)
        } else {
            array = letterCombinations(String(digits.prefix(digits.count - 1)))
            digit = String(digits.last!)
        }
        return cartesianProduct(a: array, b: map[digit]!)
    }
    
    func cartesianProduct(a: [String], b: String) -> [String] {
        var result = [String]()
        for str in a {
            for char in b {
                result.append(str + String(char))
            }
        }
        return result
    }
}
