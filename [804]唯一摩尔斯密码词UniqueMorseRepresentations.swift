class Solution {
    func uniqueMorseRepresentations(_ words: [String]) -> Int {
        let morse = [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]
        var map = [String: Int]()
        for word in words {
            var morseCode = ""
            for char in word {
                morseCode.append(morse[Int(char.asciiValue!) - 97])
            }
            map[morseCode] = 0
        }
        return map.keys.count
    }
}


