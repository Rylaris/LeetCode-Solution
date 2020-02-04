class Solution {
    func fizzBuzz(_ n: Int) -> [String] {
        var result = [String]()
        for i in 1...n {
            var s = ""
            if i % 3 == 0 {
                s += "Fizz"
            }
            if i % 5 == 0 {
                s += "Buzz"
            }
            if s == "" {
                s += i.description
            }
            result.append(s)
        }
        return result
    }
}
