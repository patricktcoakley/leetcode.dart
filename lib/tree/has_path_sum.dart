import 'package:leetcode/tree/tree_node.dart';

bool hasPathSum(TreeNode? root, int targetSum) {
  if (root == null) {
    return false;
  }

  if (root.left == null && root.right == null && root.val == targetSum) {
    return true;
  }

  targetSum -= root.val;
  return hasPathSum(root.left, targetSum) || hasPathSum(root.right, targetSum);
}
