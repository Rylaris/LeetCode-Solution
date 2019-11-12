class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        var solutions : [[Int]] = []
        for i in 0..<numRows {
            var solution : [Int] = []
            if i == 0 {
                solution.append(1)
            } else {
                for n in 0..<i+1 {
                    var leftNum : Int = 0
                    leftNum = n-1 >= 0 ? solutions[i-1][n-1] : 0
                    var rightNum : Int = 0
                    rightNum = n <= solutions[i-1].count - 1 ? solutions[i-1][n] : 0
                    solution.append(leftNum+rightNum)
                }
            }
            solutions.append(solution)
        }
        return solutions
    }
}
