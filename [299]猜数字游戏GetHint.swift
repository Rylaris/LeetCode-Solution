class Solution {
    func getHint(_ secret: String, _ guess: String) -> String {
        var A = 0, B = 0, indexOfSecret = 0, indexOfGuess = 0
        var map = [Character: Int]()
        for _ in 0 ..< secret.count {
            let s = secret[secret.index(secret.startIndex, offsetBy: indexOfSecret)]
            let g = guess[guess.index(guess.startIndex, offsetBy: indexOfGuess)]
            if s == g {
                A += 1
                B -= 1
            }
            if map[s] == nil {
                map[s] = 1
            } else {
                map[s]! += 1
            }
            indexOfGuess += 1
            indexOfSecret += 1
        }
        indexOfGuess = 0
        for _ in 0 ..< guess.count {
            let g = guess[guess.index(guess.startIndex, offsetBy: indexOfGuess)]
            if map[g] != nil && map[g]! > 0{
                B += 1
                map[g]! -= 1
            }
            indexOfGuess += 1
        }
        return "\(A)A\(B)B"
    }
}

// 1123
// 0111
