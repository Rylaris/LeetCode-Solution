class Solution {
    func findContentChildren(_ g: [Int], _ s: [Int]) -> Int {
        let a = g.sorted()
        let b = s.sorted()
        var index1 = a.count - 1
        var index2 = b.count - 1
        var result = 0
        while index1 >= 0 && index2 >= 0 {
            if a[index1] <= b[index2] {
                result += 1
                index2 -= 1
            }
            index1 -= 1
        }
        return result
    }
}
