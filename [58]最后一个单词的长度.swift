class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        var lengthOfCurrentWord : Int = 0
        var char = [Character].init(s)
        for i in (0..<char.count).reversed() {
            if char[i] != " " {
                lengthOfCurrentWord += 1
            } else if (char[i] == " " && lengthOfCurrentWord != 0) {
                break
            }
        }
        return lengthOfCurrentWord
    }
}
