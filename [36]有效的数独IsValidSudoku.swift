class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        var rows = [[Character: Int]](repeating: [Character: Int](), count: 9)
        var columns = [[Character: Int]](repeating: [Character: Int](), count: 9)
        var boxes = [[Character: Int]](repeating: [Character: Int](), count: 9)
        for i in 0..<9 {
            for j in 0..<9 {
                let char = board[i][j]
                if !char.isNumber {
                    continue
                }
                let boxIndex = (i / 3) * 3 + j / 3
                if rows[i][char] == 1 || columns[j][char] == 1  || boxes[boxIndex][char] == 1 {
                    return false
                } else {
                    rows[i][char] = 1
                    columns[j][char] = 1
                    boxes[boxIndex][char] = 1
                }
            }
        }
        return true
    }
}
