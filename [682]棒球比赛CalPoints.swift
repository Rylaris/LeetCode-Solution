class Solution {
    func calPoints(_ ops: [String]) -> Int {
        var score = [Int]()
        var result = 0
        for op in ops {
            switch op {
            case "+":
                let sum = score[score.count - 1] + score[score.count - 2]
                score.append(sum)
                result += sum
            case "D":
                let sum = score[score.count - 1] * 2
                score.append(sum)
                result += sum
            case "C":
                result -= score.removeLast()
            default:
                score.append(Int(op)!)
                result += Int(op)!
            }
        }
        return result
    }
}
