class Solution {
    func countPrimes(_ n: Int) -> Int {
        if n < 3 {
            return 0
        }
        var count = 1
        var isPrime: [Bool] = [Bool].init(repeating: true, count: n)
        for i in 0..<n {
            isPrime[i] = i % 2 != 0
        }
        var i = 3
        while i < n {
            if isPrime[i] {
                var mutiple = 3
                while i * mutiple < n {
                    isPrime[i * mutiple] = false
                    mutiple += 2
                }
                count += 1
            }
            i += 2
        }
        return count
    }
}
