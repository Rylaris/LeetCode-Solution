class Solution {
    public int reverse(int x) {
        int reversedX;
        reversedX = (x % 10) * 100 + (( x / 10) % 10) * 10 + (x / 100);
        return reversedX;
    }
}