class Solution {
    func findRestaurant(_ list1: [String], _ list2: [String]) -> [String] {
        var map = [String: Int]()
        var minIndexSum = Int.max
        var result = [String]()
        for i in 0..<list1.count {
            map[list1[i]] = i
        }
        for i in 0..<list2.count {
            if let index = map[list2[i]] {
                if i + index < minIndexSum {
                    minIndexSum = i + index
                    result.removeAll()
                    result.append(list2[i])
                } else if i + index == minIndexSum {
                    result.append(list2[i])
                }
            }
        }
        return result
    }
}
