class Solution {
    var result = [[Int]]()
    func combine(_ n: Int, _ k: Int) -> [[Int]] {
        if n < k || k == 0 {
            return []
        }
        var array = [Int](repeating: 0, count: n - k + 1)
        for i in 1...n - k + 1 {
            array[i - 1] = i
        }
        for i in 1...n - k + 1 {
            result.append([i])
        }
        bfs(n, k - 1)
        return result
    }
    
    func bfs(_ n: Int, _ k: Int) {
        if k == 0 { return }
        var temp = [[Int]]()
        for a in result {
            for i in a.last! + 1...n - k + 1 {
                var a = a
                a.append(i)
                temp.append(a)
            }
        }
        result = temp
        bfs(n, k - 1)
    }
}
