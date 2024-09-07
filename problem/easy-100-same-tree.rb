#
# @lc app=leetcode id=100 lang=ruby
#
# [100] Same Tree
#

# @lc code=start
# Definition for a binary tree node.
# class TreeNode
#   attr_accessor :val, :left, :right

#   def initialize(val = 0, left = nil, right = nil)
#     @val = val
#     @left = left
#     @right = right
#   end
# end
# @param {TreeNode} p
# @param {TreeNode} q
# @return {Boolean}
def is_same_tree(p, q)
  return true if p.nil? && q.nil?
  return false if p.nil? || q.nil?
  return false if p.val != q.val

  left_same = is_same_tree(p.left, q.left)
  right_same = is_same_tree(p.right, q.right)

  left_same && right_same

  # return false if p.nil? || q.nil?
  # return false if p.val != q.val

  # if p.left && q.left && p.left.val == q.left.val
  #   is_same_tree(p.left, q.left)
  # elsif p.left && q.left && p.right.val == q.right.val
  #   is_same_tree(p.right, q.right)
  # end

  # true
end
# @lc code=end

# p = TreeNode.new(2)
# p.left = TreeNode.new(2)
# p.right = TreeNode.new(3)

# q = TreeNode.new(1)
# q.left = TreeNode.new(2)
# q.right = TreeNode.new(3)
