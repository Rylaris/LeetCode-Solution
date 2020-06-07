class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var result = 0, begin = 0
        let str = Array(s)
        var set = Set<Character>()
        for i in str.indices {
            if set.contains(str[i]) {
                result = max(result, i - begin)
                while begin < i {
                    set.remove(str[begin])
                    if str[begin] == str[i] {
                        begin += 1
                        break
                    }
                    begin += 1
                }
            }
            set.insert(str[i])
        }
        return max(set.count, result)
    }
}

