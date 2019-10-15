class Solution {
    public int reverse(int x) {
        long reversedX = 0;
        while (x != 0) {
            reversedX = reversedX * 10 + (x % 10);
            x /= 10;
        }
        return Math.abs(reversedX) > (long)Integer.MAX_VALUE ? 0 : (int)reversedX;
    }
}