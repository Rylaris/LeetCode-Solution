class Solution {
    func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
        var result = [[Int]]()
        for i in candidates.indices {
            let candidate = candidates[i]
            if candidate == target {
                result.append([candidate])
                continue
            }
            if target - candidate <= 0 {
                continue
            }
            let temp = combinationSum([Int](candidates[i..<candidates.count]), target - candidate)
            for var item in temp {
                item.append(candidate)
                result.append(item)
            }
        }
        return result
    }
}
