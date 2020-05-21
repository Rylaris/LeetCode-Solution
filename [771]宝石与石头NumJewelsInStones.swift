class Solution {
    func numJewelsInStones(_ J: String, _ S: String) -> Int {
        var map = [Character: Int]()
        var num = 0
        for char in J {
            map[char] = 1
        }
        for char in S {
            if map[char] == 1 {
                num += 1
            }
        }
        return num
    }
}

