#
# @lc app=leetcode id=136 lang=ruby
#
# [136] Single Number
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
  # nums.tally.invert[1]
  nums.inject(0) { |acc, num| acc ^ num }
end
# @lc code=end
