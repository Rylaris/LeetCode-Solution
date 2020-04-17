class Solution {
    func getImportance(_ employees: [Employee], _ id: Int) -> Int {
        var importance = [Int: Employee]()
        for employee in employees {
            importance[employee.id] = employee
        }
        var sum = importance[id]!.importance
        var subordinates: [Int] = importance[id]!.subordinates
        while !subordinates.isEmpty {
            sum += importance[subordinates.first!]!.importance
            subordinates.append(contentsOf: importance[subordinates.first!]!.subordinates)
            subordinates.removeFirst()
        }
        return sum
    }
}
