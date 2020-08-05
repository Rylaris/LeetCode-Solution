class Solution {
    func simplifyPath(_ path: String) -> String {
        let subPath = path.split(separator: "/")
        var stack = [String]()
        for path in subPath {
            if path == ".." {
                if !stack.isEmpty {
                    stack.removeLast()
                }
            } else if path != "." {
                stack.append(String(path))
            }
        }
        return "/" + stack.joined(separator: "/")
    }
}
