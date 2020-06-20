class Solution {
    var result = [[String]](repeating: [], count: 100)
    func generateParenthesis(_ n: Int) -> [String] {
        var ans = [String]()
        if n == 0 {
            ans = [""]
        } else {
            for i in 0..<n {
                for a in generateParenthesis(i) {
                    for b in generateParenthesis(n - i - 1) {
                        ans.append("(" + a + ")" + b)
                    }
                }
            }
        }
        return ans
    }
}
