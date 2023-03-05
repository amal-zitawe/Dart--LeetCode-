//QA(9)
void main() {
  var solution = Solution();
  var sum = solution.isPalindrome(10);
  print(sum);
}

class Solution {
  int x = 1;
  bool isPalindrome(int x) {
    String value = x.toString();
    List list = value.split('');
    if (list[0] == list[list.length - 1]) {
      x = 0;
    }
    if (x == 0) {
      return true;
    } else
      return false;
  }
}
