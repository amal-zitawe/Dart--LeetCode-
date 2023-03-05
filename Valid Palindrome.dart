//QA(125)
void main() {
  var solution = Solution();
  print(solution.isPalindrome("A man, a plan, a canal: Panama"));
}

class Solution {
  bool isPalindrome(String s) {
    bool answer = true;
    var filtering = s.replaceAll(RegExp('[^a-zA-Z0-9]'), '').toLowerCase();
    int start = 0;
    int end = filtering.length - 1;
    while (start <= end) {
      if (filtering[start] != filtering[end]) {
        return answer = false;
      }
      start++;
      end--;
    }
    return answer;
  }
}
