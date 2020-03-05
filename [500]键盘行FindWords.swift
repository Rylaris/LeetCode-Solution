class Solution {
    func findWords(_ words: [String]) -> [String] {
        var result = words
        let lineOne = ["Q","W","E","R","T","Y","U","I","O","P"]
        let lineTwo = ["A","S","D","F","G","H","J","K","L"]
        let lineThree = ["Z","X","C","V","B","N","M"]
        var i = 0
        while i < result.count {
            var type = 0
            if lineOne.contains(result[i].first!.uppercased()) {
                type = 1
            } else if lineTwo.contains(result[i].first!.uppercased()) {
                type = 2
            } else {
                type = 3
            }
            for char in result[i].uppercased() {
                if (lineOne.contains(String(char)) && type != 1) ||
                    (lineTwo.contains(String(char)) && type != 2) ||
                    (lineThree.contains(String(char)) && type != 3) {
                    result.remove(at: i)
                    i -= 1
                    break
                }
            }
            i += 1
        }
        return result
    }
}
