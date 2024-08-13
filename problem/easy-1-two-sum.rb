#
# @lc app=leetcode id=1 lang=ruby
#
# [1] Two Sum
#

# @lc code=start
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  result = []
  nums.size.times do |i|
    (i + 1).upto(nums.size - 1) do |j|
      return result.push(i, j) if nums[i] + nums[j] == target && i != j
    end
  end
end
# @lc code=end
