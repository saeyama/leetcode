#
# @lc app=leetcode id=35 lang=ruby
#
# [35] Search Insert Position
#

# @lc code=start
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
  min = 0
  max = nums.size - 1
  while min <= max
    mid = (min + max) / 2
    return mid if nums[mid] == target

    nums[mid] > target ? max = mid - 1 : min = mid + 1
  end
  min
end
# @lc code=end
