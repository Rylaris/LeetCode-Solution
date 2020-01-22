class Solution {
    func readBinaryWatch(_ num: Int) -> [String] {
        var results = [String]()
        for hour in 0...11 {
            for minute in 0...59 {
                var nums = 0
                var minuteNum = minute
                var hourNum = hour
                while minuteNum != 0 {
                    minuteNum = minuteNum & (minuteNum - 1)
                    nums += 1
                }
                while hourNum != 0 {
                    hourNum = hourNum & (hourNum - 1)
                    nums += 1
                }
                if nums == num {
                    if minute > 9 {
                        results.append("\(hour):" + "\(minute)")
                    } else {
                        results.append("\(hour):" + "0\(minute)")
                    }
                }
            }
        }
        return results
    }
}
