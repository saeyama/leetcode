#
# @lc app=leetcode id=101 lang=ruby
#
# [101] Symmetric Tree
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
# @return {Boolean}
def is_symmetric(root)
  return true if root.nil?

  check_symmetric(root.left, root.right)
end

def check_symmetric(left, right)
  return true if left.nil? && right.nil?
  return false if left.nil? || right.nil?

  left.val == right.val && check_symmetric(left.left, right.right) && check_symmetric(left.right, right.left)
end

# @lc code=end

root = TreeNode.new(1)
root.left = TreeNode.new(2)
root.left.left = nil
root.left.right = TreeNode.new(3)

root.right = TreeNode.new(2)
root.right.left = nil
root.right.right = TreeNode.new(3)

# root = TreeNode.new(1)
# root.left = TreeNode.new(2)
# root.left.left = TreeNode.new(3)
# root.left.right = TreeNode.new(4)

# root.right = TreeNode.new(2)
# root.right.left = TreeNode.new(4)
# root.right.right = TreeNode.new(3)

p is_symmetric(root)
