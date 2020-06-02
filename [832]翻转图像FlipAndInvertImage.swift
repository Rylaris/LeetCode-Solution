class Solution {
    func flipAndInvertImage(_ A: [[Int]]) -> [[Int]] {
        var result = [[Int]]()
        for array in A {
            var temp = [Int]()
            for i in array.indices {
                temp.append(1 - array[array.count - 1 - i])
            }
            result.append(temp)
        }
        return result
    }
}


