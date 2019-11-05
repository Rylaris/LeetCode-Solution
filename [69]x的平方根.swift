/*
 实现 int sqrt(int x) 函数。

 计算并返回 x 的平方根，其中 x 是非负整数。

 由于返回类型是整数，结果只保留整数的部分，小数部分将被舍去。

 示例 1:

 输入: 4
 输出: 2
 示例 2:

 输入: 8
 输出: 2
 说明: 8 的平方根是 2.82842...,
      由于返回类型是整数，小数部分将被舍去。
 */

class Solution {
    func mySqrt(_ x: Int) -> Int {
        if x == 1 {
            return 1
        }
        var a = 0
        var b = x
        while true {
            let mid = (a + b) / 2
            if mid * mid < x {
                if (mid + 1) * (mid + 1) >= x {
                    return mid
                }
                a = mid
            } else if mid * mid > x {
                if (mid - 1) * (mid - 1) <= x {
                    return mid - 1
                }
                b = mid
            } else {
                return mid
            }
        }
    }
}
