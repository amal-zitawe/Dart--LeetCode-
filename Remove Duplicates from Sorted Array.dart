//QA(26)
void main() {
  var solution = Solution();
  List<int> n = [1, 1, 1, 3, 3, 3, 7];

  print(solution.removeDuplicates(n));
}

class Solution {
  int removeDuplicates(List<int> nums) {
    for (int i = 0; i < nums.length - 1; i++) {
      if (nums[i] == nums[i + 1]) {
        nums.remove(nums[i]);
        i--;
      }
    }
    print(nums);
    return (nums.length);
  }
}
