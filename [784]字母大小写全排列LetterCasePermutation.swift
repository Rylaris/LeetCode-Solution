class Solution {
    func letterCasePermutation(_ S: String) -> [String] {
        if S.isEmpty {
            return []
        }
        let strArr = Array(S.lowercased())
        var result = [""]
        for char in strArr {
            if char.isNumber {
                for i in 0..<result.count {
                    result[i].append(char)
                }
            } else {
                for _ in 0..<result.count {
                    let temp = result[0]
                    result.remove(at: 0)
                    result.append(temp + char.lowercased())
                    result.append(temp + char.uppercased())
                }
            }
        }
        return result
    }
}

