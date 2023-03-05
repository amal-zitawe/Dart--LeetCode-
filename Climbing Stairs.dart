//QA(70)
void main() {
  var solution = Solution();
  print(solution.climbStairs(5));
}

class Solution {
  int climbStairs(int n) {
    //it's a fibonacci.
    int result = 1, step = 1, temp = 0;
    for (int i = 1; i < n; i++) {
      temp = result;
      result = result + step;
      step = temp;
    }
    return result;
  }
}
