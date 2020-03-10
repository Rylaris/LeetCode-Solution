class Solution {
    func fib(_ N: Int) -> Int {
        if N < 2 {
            return N
        }
        var a = 0
        var b = 1
        for _ in 0..<N - 2 {
            let temp = a
            a = b
            b += temp
        }
        return a + b
    }
}
