class Solution {
    func shortestToChar(_ S: String, _ C: Character) -> [Int] {
        let str = Array(S)
        var result = [Int](repeating: 0, count: str.count)
        var position: Int?
        for i in str.indices {
            if str[i] == C {
                var bound = 0
                if position != nil {
                    bound = (position! + i) / 2 + 1
                }
                (bound..<i).forEach({
                    result[$0] = i - $0
                })
                position = i
            } else {
                result[i] = i - (position ?? i)
            }
        }
        return result
    }
}

