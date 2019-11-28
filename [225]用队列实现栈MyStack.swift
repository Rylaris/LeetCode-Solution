class MyStack {
    var entry = [Int]()
    /** Initialize your data structure here. */
    init() {
        
    }
    
    /** Push element x onto stack. */
    func push(_ x: Int) {
        entry.append(x)
    }
    
    /** Removes the element on top of the stack and returns that element. */
    func pop() -> Int {
        return entry.removeLast()
    }
    
    /** Get the top element. */
    func top() -> Int {
        if !entry.isEmpty {
            return entry.last!
        } else {
            return 0
        }
    }
    
    /** Returns whether the stack is empty. */
    func empty() -> Bool {
        return entry.isEmpty
    }
}

