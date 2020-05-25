class Solution {
    func subdomainVisits(_ cpdomains: [String]) -> [String] {
        var domainsMap = [String: Int]()
        for cpdomain in cpdomains {
            var times = ""
            var domain = ""
            for char in cpdomain {
                if char.isNumber {
                    times.append(char)
                } else if char != " " {
                    domain.append(char)
                }
            }
            let subDomains = domain.split(separator: ".")
            var currentDomain = ""
            for i in 0..<subDomains.count {
                currentDomain.insert(contentsOf: subDomains[subDomains.count - 1 - i], at: currentDomain.startIndex)
                domainsMap[currentDomain]  = (domainsMap[currentDomain] ?? 0) + Int(times)!
                currentDomain.insert(".", at: currentDomain.startIndex)
            }
        }
        var result = [String]()
        for key in domainsMap.keys {
            result.append(domainsMap[key]!.description + " " + key)
        }
        return result
    }
}

