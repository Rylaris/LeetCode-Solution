class Solution {
    func getImportance(_ employees: [Employee], _ id: Int) -> Int {
        var importance = [Int: [Int]]()
        for employee in employees {
            importance[employee.id] = employee.subordinates
            importance[employee.id]!.append(employee.importance)
        }
        var sum = importance[id]!.removeLast()
        var subordinates: [Int] = importance[id]!
        while !subordinates.isEmpty {
            sum += importance[subordinates.first!]!.removeLast()
            subordinates.append(contentsOf: importance[subordinates.first!]!)
            subordinates.removeFirst()
        }
        return sum
    }
}
