class Solution {
    func combinationSum2(_ candidates: [Int], _ target: Int) -> [[Int]] {
        return backtrack(candidates.sorted(), target)
    }
    
    func backtrack(_ candidates: [Int], _ target: Int) -> [[Int]]  {
        var result = [[Int]]()
        for i in candidates.indices {
            let candidate = candidates[i]
            if i > 0 && candidates[i - 1] == candidate {
                continue
            }
            if candidate == target {
                result.append([candidate])
                continue
            }
            if candidate > target {
                break
            }
            let temp = backtrack([Int](candidates[i + 1..<candidates.count]), target - candidate)
            for var item in temp {
                item.append(candidate)
                result.append(item)
            }
        }
        return result
    }
}
