class Solution {
    func getPermutation(_ n: Int, _ k: Int) -> String {
        if n == 1 {
            return "1"
        }
        var result = ""
        var nums = [Int]()
        for i in 1...n {
            nums.append(i)
        }
        var n = n
        var order = k
        var fact = factorial(n - 1)
        while !nums.isEmpty {
            let a = (order - 1) / fact
            order -= a * fact
            result += nums.remove(at: a).description
            if n == 1 {
                break
            }
            fact /= n - 1
            n -= 1
            
        }
        return result
    }
    
    func factorial(_ n: Int) -> Int {
        var result = 1
        for i in 1...n {
            result *= i
        }
        return result
    }
}
