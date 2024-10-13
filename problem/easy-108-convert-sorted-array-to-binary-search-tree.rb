#
# @lc app=leetcode id=108 lang=ruby
#
# [108] Convert Sorted Array to Binary Search Tree
#

# @lc code=start
# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {Integer[]} nums
# @return {TreeNode}
def sorted_array_to_bst(nums)
  return nil if nums.empty?

  mid = nums.length / 2
  root = TreeNode.new(nums[mid])
  root.left = sorted_array_to_bst(nums[0...mid])
  root.right = sorted_array_to_bst(nums[mid + 1..-1])
  root
end
# @lc code=end
