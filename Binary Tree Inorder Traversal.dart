//Qa(94)

//Definition for a binary tree node.
class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  List<int> inorderTraversal(TreeNode? root) {
    List stack = [];
    List<int> ans = [];
    while (root != null || stack.length != 0) {
      while (root != null) {
        stack.add(root);
        root = root.left;
      }
      root = stack.removeLast();
      ans.add(root!.val);
      root = root.right;
    }
    return ans;
  }
}
