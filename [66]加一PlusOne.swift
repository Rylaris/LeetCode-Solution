private class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var num = digits
        var index = num.count - 1
        while num[index] == 9 {
            num[index] = 0
            index -= 1
            if index == -1 {
                num.insert(0, at: 0)
                index = 0
            }
        }
        num[index] += 1
        return num
    }
}
