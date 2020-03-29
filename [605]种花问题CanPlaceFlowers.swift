class Solution {
    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
        var flowerbed = flowerbed
        var flowers = 0
        if flowerbed.count == 1 && flowerbed[0] == 0 {
            return n <= 1
        }
        for i in 0..<flowerbed.count {
            if flowerbed[i] == 0 && (i == 0 || flowerbed[i - 1] == 0) && (i == flowerbed.count - 1 || flowerbed[i + 1] == 0) {
                flowers += 1
                flowerbed[i] = 1
            }
        }
        return flowers >= n
    }
}

