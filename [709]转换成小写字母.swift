class Solution {
    func toLowerCase(_ str: String) -> String {
        let strArray = Array(str)
        var lowerCaseStr = ""
        for char in strArray {
            let ascii = Int(char.asciiValue!)
            if ascii >= 65 && ascii <= 90 {
                lowerCaseStr.append(Character(UnicodeScalar(ascii + 32)!))
            } else {
                lowerCaseStr.append(char)
            }
        }
        return lowerCaseStr
    }
}
