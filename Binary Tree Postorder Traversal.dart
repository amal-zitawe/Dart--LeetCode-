//QA(145)
// Definition for a binary tree node.
class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  List<int> answor = [];
  List<int> postorderTraversal(TreeNode? root) {
    if (root == null) return answor;
    postorderTraversal(root.left);
    postorderTraversal(root.right);
    answor.add(root.val);
    return answor;
  }
}
