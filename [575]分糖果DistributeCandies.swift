class Solution {
    func distributeCandies(_ candies: [Int]) -> Int {
        var map = [Int : Int]()
        for num in candies {
            map[num] = 1
        }
        return min(candies.count / 2, map.keys.count)
    }
}
