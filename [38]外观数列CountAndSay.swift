class Solution {
    func countAndSay(_ n: Int) -> String {
        var map = [1]
        for _ in 1..<n {
            var temp = [Int]()
            var times = 1
            for i in 0..<map.count - 1 {
                if map[i] == map[i + 1] {
                    times += 1
                } else {
                    temp.append(times)
                    temp.append(map[i])
                    times = 1
                }
            }
            temp.append(times)
            temp.append(map.last!)
            map = temp
        }
        return map.reduce("") { $0 + "\($1)" }
    }
}
