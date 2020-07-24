class Solution {
    func myPow(_ x: Double, _ n: Int) -> Double {
        if n < 0 {
            return 1 / myPow(x, -n)
        }
        if n == 0 {
            return 1
        }
        let temp = myPow(x, n / 2)
        return n % 2 == 0 ? temp * temp : temp * temp * x
    }
}
