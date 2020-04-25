class Solution {
    func isOneBitCharacter(_ bits: [Int]) -> Bool {
        var i = 0
        var currentBit = false
        while i < bits.count {
            if bits[i] == 0 {
                currentBit = true
                i += 1
            } else {
                currentBit = false
                i += 2
            }
        }
        return currentBit
    }
}
