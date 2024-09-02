#
# @lc app=leetcode id=94 lang=ruby
#
# [94] Binary Tree Inorder Traversal
#

# @lc code=start
# Definition for a binary tree node.
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val = 0, left = nil, right = nil)
        @val = val
        @left = left
        @right = right
    end
end
# @param {TreeNode} root
# @return {Integer[]}
def inorder_traversal(root)
  return [] if root.nil?

  result = []
  result += inorder_traversal(root.left)
  result << root.val
  result += inorder_traversal(root.right)

  result
end
# @lc code=end

# root = TreeNode.new(1)
# root.right = TreeNode.new(2)
# root.right.left = TreeNode.new(3)

