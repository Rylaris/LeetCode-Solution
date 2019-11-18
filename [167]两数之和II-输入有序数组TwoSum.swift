class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var index1 = 0, index2 = numbers.count - 1
        while true {
            if numbers[index1] + numbers[index2] == target {
                break
            }
            if numbers[index1] + numbers[index2] < target {
                index1 += 1
            } else if numbers[index1] + numbers[index2] > target {
                index2 -= 1
            }
        }
        return [index1 + 1, index2 + 1]
    }
}
