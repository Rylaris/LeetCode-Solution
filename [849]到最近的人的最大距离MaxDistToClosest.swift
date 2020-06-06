class Solution {
    func maxDistToClosest(_ seats: [Int]) -> Int {
        var result = 0
        var lastSeat: Int?
        for i in seats.indices {
            if seats[i] == 1 {
                result = max(result, (i - (lastSeat ?? -i)) / 2)
                lastSeat = i
            }
        }
        return max(result, seats.count - 1 - (lastSeat ?? 0))
    }
}

