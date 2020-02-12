class Solution {
    func compress(_ chars: inout [Character]) -> Int {
        var result = [Character]()
        var index1 = 0, index2 = 0
        while index2 < chars.count {
            while index2 < chars.count && chars[index1] == chars[index2] {
                index2 += 1
            }
            result.append(chars[index1])
            if index2 - index1 > 1 {
                for char in (index2 - index1).description {
                    result.append(char)
                }
            }
            index1 = index2
        }
        chars = result
        return chars.count
    }
}
