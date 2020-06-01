class Solution {
    func largeGroupPositions(_ S: String) -> [[Int]] {
        var result = [[Int]]()
        let str = Array(S)
        var index1 = 0, index2 = 0
        while index2 < S.count {
            if str[index1] == str[index2] {
                index2 += 1
            } else {
                if index2 - index1 >= 3 {
                    result.append([index1, index2 - 1])
                }
                index1 = index2
            }
        }
        if index2 - index1 >= 3 {
            result.append([index1, index2 - 1])
        }
        return result
    }
}

