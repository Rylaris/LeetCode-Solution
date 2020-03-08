class Solution {
    func findRelativeRanks(_ nums: [Int]) -> [String] {
        let num = nums.sorted(by: >)
        var result = [String]()
        var ranks = [Int](repeating: -1, count: num.max()! + 1)
        for i in 0..<num.count {
            ranks[num[i]] = i + 1
        }
        for num in nums {
            switch ranks[num] {
            case 1:
                result.append("Gold Medal")
            case 2:
                result.append("Silver Medal")
            case 3:
                result.append("Bronze Medal")
            default:
                result.append(ranks[num].description)
            }
        }
        return result
    }
}
