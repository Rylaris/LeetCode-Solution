class Solution {
    func fib(_ n: Int) -> Int {
        var a = 0, b = 1
        for _ in 0..<n {
            (a, b) = ((a + b) % 1000000007, a)
        }
        return a
    }
}
// [剑指Offer10-I]斐波那契数列Fib
