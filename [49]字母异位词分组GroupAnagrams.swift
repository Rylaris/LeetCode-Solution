class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var map = [[Int]: [String]]()
        var result = [[String]]()
        for str in strs {
            var temp = [Int](repeating: 0, count: 26)
            for char in str {
                let index = Int(char.asciiValue!) - 97
                temp[index] += 1
            }
            if map[temp] == nil {
                map[temp] = [str]
            } else {
                map[temp]?.append(str)
            }
        }
        for value in map.values {
            result.append(value)
        }
        return result
    }
}
