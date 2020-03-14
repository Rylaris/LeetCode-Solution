class Solution {
    func findPairs(_ nums: [Int], _ k: Int) -> Int {
        if k < 0 {
            return 0
        }
        var result = 0
        var maps = [Int: Int]()
        for n in nums {
            if maps[n] == nil {
                maps[n] = 1
            } else {
                maps[n]! += 1
            }
        }
        for key in maps.keys {
            if k == 0 {
                if maps[key]! >= 2 {
                    result += 1
                }
            } else {
                if maps[key + k] != nil {
                    result += 1
                }
                if maps[key - k] != nil {
                    result += 1
                }
                maps[key] = nil
            }
        }
        return result
    }
}
