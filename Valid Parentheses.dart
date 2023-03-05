//QA(20)
void main() {
  var solution = Solution();
  print(solution.isValid("{}()"));
}

class Solution {
  bool isValid(String s) {
    if (s.isEmpty) return true;

    List<String> parentheses = [];

    for (int i = 0; i < s.length; i++) {
      if ((s[i] == ')' || s[i] == ']' || s[i] == '}') && parentheses.isEmpty) {
        return false;
      } else if ((s[i] == ')' && parentheses.last == '(') ||
          (s[i] == ']' && parentheses.last == '[') ||
          (s[i] == '}' && parentheses.last == '{')) {
        parentheses.removeLast();
      } else {
        parentheses.add(s[i]);
      }
    }
    return parentheses.isEmpty;
  }
}
