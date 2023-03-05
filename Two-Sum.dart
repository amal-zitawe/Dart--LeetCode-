//QA(1)
void main() {
  var solution = Solution();
  var sum = solution.twoSum([1, 2, 3], 5);
  print(sum);
}

class Solution {
  List<int> twoSum(List<int> nums, int target) {
    int n = nums.length;
    for (var i = 0; i < n - 1; i++) {
      for (var x = i + 1; x < n; x++) {
        if (nums[i] + nums[x] == target) {
          return [i, x];
        }
      }
    }
    return [];
  }
}
