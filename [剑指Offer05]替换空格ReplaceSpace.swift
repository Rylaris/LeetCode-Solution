class Solution {
    func replaceSpace(_ s: String) -> String {
        return Array(s).reduce("") { $1 == " " ? $0 + "%20" : $0 + String($1) }
    }
}
