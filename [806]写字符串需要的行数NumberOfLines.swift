class Solution {
    func numberOfLines(_ widths: [Int], _ S: String) -> [Int] {
        var numOfLine = 0
        var currentWidth = 0
        for char in S {
            let index = Int(char.asciiValue!) - 97
            let width = widths[index]
            if currentWidth + width > 100 {
                numOfLine += 1
                currentWidth = width
            } else {
                currentWidth += width
            }
        }
        return [numOfLine + 1, currentWidth]
    }
}

