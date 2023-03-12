//QA(191)
class Solution {
  int hammingWeight(int nums) {
    String value = nums.toString();
    List list = value.split('');
    int count = 0;
    for (int i = 0; i < list.length; i++) {
      if (list[i] == '1') {
        count++;
      }
    }
    return count;
  }
}
