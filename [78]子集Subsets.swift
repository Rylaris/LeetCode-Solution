class Solution {
    var result = [[Int]]()
    func subsets(_ nums: [Int]) -> [[Int]] {
        if nums.isEmpty {
            return result
        }
        result.append([])
        dfs(nums)
        return result
    }
    
    func dfs(_ nums: [Int]) {
        if nums.count == 1 {
            result.append([nums.first!])
            return
        }
        dfs(nums.dropLast())
        result.forEach({
            result.append($0)
            result[result.count - 1].append(nums.last!)
        })
    }
}
