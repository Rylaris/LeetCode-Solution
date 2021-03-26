class Solution {
    func wordBreak(_ s: String, _ wordDict: [String]) -> Bool {
        let dict = Set(wordDict)
        let longest = dict.max { $0.count < $1.count }?.count ?? 0
        var result = [Bool](repeating: false, count: s.count + 1)
        result[0] = true
        for i in 0..<s.count {
            for j in max(0, i - longest)...i {
                if result[j] == false { continue }
                let subString = s[s.index(s.startIndex, offsetBy: j)...s.index(s.startIndex, offsetBy: i)]
                if result[j] && dict.contains(String(subString)) {
                    result[i + 1] = true
                    break
                }
            }
        }
        return result[s.count]
    }
}
