class Solution {
    func judgeCircle(_ moves: String) -> Bool {
        var x = 0, y = 0
        for char in moves {
            switch char {
            case "L": x -= 1
            case "R": x += 1
            case "U": y += 1
            case "D": y -= 1
            default: continue
            }
        }
        return x == 0 && y == 0
    }
}
