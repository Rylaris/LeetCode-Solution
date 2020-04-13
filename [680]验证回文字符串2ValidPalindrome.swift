class Solution {
    func validPalindrome(_ s: String) -> Bool {
        let str = Array(s)
        var index1 = 0, index2 = s.count - 1
        while index1 <= index2 {
            if str[index1] == str[index2] {
                index1 += 1
                index2 -= 1
            } else {
                var l = index1
                var r = index2 - 1
                var flag1 = true
                while l <= r {
                    if str[l] != str[r] {
                        flag1 = false
                    }
                    l += 1
                    r -= 1
                }
                l = index1 + 1
                r = index2
                while l <= r {
                    if str[l] != str[r] && !flag1 {
                        return false
                    }
                    l += 1
                    r -= 1
                }
                return true
            }
        }
        return true
    }
}
