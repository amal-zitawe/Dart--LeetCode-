//QA(144)
 //Definition for a binary tree node.
  class TreeNode {
   int val;
   TreeNode? left;
   TreeNode? right;
   TreeNode([this.val = 0, this.left, this.right]);
 }
 
class Solution {
  List<int> answor=[] ;
  List<int> preorderTraversal(TreeNode? root) {
      if(root==null)return answor ;
      answor.add(root.val);
      preorderTraversal(root.left);
      preorderTraversal(root.right);
      return answor ;
  }
}
