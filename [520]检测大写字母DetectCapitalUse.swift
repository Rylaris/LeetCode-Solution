import Foundation

class Solution {
    func detectCapitalUse(_ word: String) -> Bool {
        // 正则表达式方式，需注意LeetCode无法编译通过
        let predicate1 = NSPredicate(format: "SELF MATCHES %@", "[A-Z]*")
        let predicate2 = NSPredicate(format: "SELF MATCHES %@", "[a-z]*")
        let predicate3 = NSPredicate(format: "SELF MATCHES %@", "[A-Z][a-z]*")
        return predicate1.evaluate(with: word) || predicate2.evaluate(with: word) || predicate3.evaluate(with: word)
        
        // 传统方式
        var uppercaseNum = 0
        for char in word {
            if char.isUppercase {
                uppercaseNum += 1
            }
        }
        return uppercaseNum == 0 || uppercaseNum == word.count || (uppercaseNum == 1 && word.first!.isUppercase)
    }
}
