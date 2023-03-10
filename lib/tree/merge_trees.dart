import 'package:leetcode/tree/tree_node.dart';

TreeNode? mergeTrees(TreeNode? root1, TreeNode? root2) {
  if (root1 == null && root2 == null) {
    return null;
  }

  if (root1 == null) {
    return root2;
  }

  if (root2 == null) {
    return root1;
  }

  var node = TreeNode(root1.val + root2.val)
    ..left = mergeTrees(root1.left, root2.left)
    ..right = mergeTrees(root1.right, root2.right);

  return node;
}
