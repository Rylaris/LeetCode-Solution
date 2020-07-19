class Solution {
    func buddyStrings(_ A: String, _ B: String) -> Bool {
        if A.count != B.count {
            return false
        }
        if A == B {
            return sameString(A)
        }
        let a = Array(A), b = Array(B)
        var index = 0
        var diff = 0
        var temp = [Character]()
        while index < a.count {
            if a[index] != b[index] {
                if temp.isEmpty {
                    temp = [a[index], b[index]]
                } else {
                    if temp == [a[index], b[index]] || temp != [a[index], b[index]].reversed() {
                        return false
                    }
                }
                diff += 1
            }
            index += 1
        }
        return diff == 2
    }
    
    func sameString(_ A: String) -> Bool {
        let a = Array(A)
        var map = [Character: Int]()
        var temp = 0
        for i in a.indices {
            map[a[i]] = (map[a[i]] ?? 0) + 1
        }
        for key in map.keys {
            temp = max(temp, map[key]!)
        }
        return temp >= 2
    }
}
