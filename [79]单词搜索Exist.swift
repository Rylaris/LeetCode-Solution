class Solution {
    var array: [[Character]] = [["A","B","C","C"], ["S","F","C","S"], ["A","D","E","E"]]
    var string: [Character] = []
    var isVisited = [[Bool]]()
    
    func exist(_ board: [[Character]], _ word: String) -> Bool {
        if word.isEmpty {
            return false
        }
        array = board
        let emptyArray = [[Bool]](repeating: [Bool](repeating: false, count: array[0].count), count: array.count)
        isVisited = emptyArray
        string = Array(word)
        for i in 0..<array.count {
            for j in 0..<array[i].count {
                if array[i][j] == string.first {
                    if dfs(x: i, y: j, index: 1) {
                        return true
                    }
                    isVisited = emptyArray
                }
            }
        }
        return false
    }
    
    func dfs(x: Int, y: Int, index: Int) -> Bool {
        if index == string.count {
            return true
        }
        isVisited[x][y] = true
        if x > 0 && array[x - 1][y] == string[index] && !isVisited[x - 1][y] && dfs(x: x - 1, y: y, index: index + 1) {
            return true
        }
        if x < array.count - 1 && array[x + 1][y] == string[index] && !isVisited[x + 1][y] && dfs(x: x + 1, y: y, index: index + 1) {
            return true
        }
        if y > 0 && array[x][y - 1] == string[index] && !isVisited[x][y - 1] && dfs(x: x, y: y - 1, index: index + 1) {
            return true
        }
        if y < array[0].count - 1 && array[x][y + 1] == string[index] && !isVisited[x][y + 1] && dfs(x: x, y: y + 1, index: index + 1) {
            return true
        }
        isVisited[x][y] = false
        return false
    }
}
