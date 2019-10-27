class Solution {
    public String longestCommonPrefix(String[] strs) {
        if (strs.length == 0 || strs == null) return "";
        for (int i = 0; i < strs[0].length(); i++) {
            char a = strs[0].charAt(i);
            for (int n = 1; n < strs.length; n++) {
                if (strs[n].length() == i || strs[n].charAt(i) != a) {
                    return strs[0].substring(0, i);
                }
            }
        }
        return strs[0];
    }
}