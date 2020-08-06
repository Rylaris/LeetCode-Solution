class Solution {
    func simplifyPath(_ path: String) -> String {
        let subPath = path.split(separator: "/")
        var stack = [String]()
        for path in subPath {
            if path == ".." {
                stack.popLast()
            } else if path != "." {
                stack.append(String(path))
            }
        }
        return "/" + stack.joined(separator: "/")
    }
}
