class Solution {
    func nextGreatestLetter(_ letters: [Character], _ target: Character) -> Character {
        for char in letters {
            if char > target {
                return char
            }
        }
        return letters.first!
    }
}
