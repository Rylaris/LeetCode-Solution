class Solution {
    func shortestCompletingWord(_ licensePlate: String, _ words: [String]) -> String {
        var license = ""
        var map = [Character: Int]()
        var result = ""
        // 首先计算license的字母个数存入哈希表
        for char in licensePlate {
            if char.isLetter {
                license.append(char.lowercased())
                map[license.last!]  = (map[license.last!] ?? 0) + 1
            }
        }
        // 对单词列表里的每一个单词进行判断
        for word in words {
            // 如果结果不为空（意味着至少已经找到一个匹配的单词）并且当前单词更长就直接跳过
            if !result.isEmpty && word.count > result.count {
                continue
            }
            var tempMap = [Character: Int]()
            var isPair = true
            // 计算当前单词的单词个数
            for char in word {
                tempMap[char] = (tempMap[char] ?? 0) + 1
            }
            // 比较当前单词和license的单词个数，只要license某一个单词个数大于当前单词就说明不匹配
            for key in map.keys {
                if map[key]! > (tempMap[key] ?? 0) {
                    isPair = false
                    break
                }
            }
            // 如果匹配并且当前单词比结果短或者结果为空，就令结果为当前单词
            if isPair && (word.count < result.count || result.isEmpty) {
                result = word
            }
        }
        return result
    }
}
