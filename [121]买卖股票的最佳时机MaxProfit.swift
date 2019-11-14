class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        if prices.count == 0 {
            return 0
        }
        var max = 0
        var minPrice = prices[0]
        for i in 0..<prices.count {
            if prices[i] < minPrice {
                minPrice = prices[i]
            } else if prices[i] - minPrice > max {
                max = prices[i] - minPrice
            }
        }
        return max
    }
}
