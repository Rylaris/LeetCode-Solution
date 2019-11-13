class Solution {
    class func getRow(_ rowIndex: Int) -> [Int] {
        var solution : [Int] = []
        for i in 0...rowIndex {
            if i == 0 {
                solution.append(1)
            } else {
                for n in 0...i {
                    var leftNum : Int = 0
                    leftNum = i - n - 1 >= 0 ? solution[i - n - 1] : 0
                    var rightNum : Int = 0
                    rightNum = i - n <= solution.count - 1 ? solution[i - n] : 0
                    if i - n >= solution.count {
                        solution.append(leftNum + rightNum)
                    } else {
                    solution[i - n] = leftNum + rightNum
                    }
                }
            }
        }
        return solution
    }
}
