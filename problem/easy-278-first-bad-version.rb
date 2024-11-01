#
# @lc app=leetcode id=278 lang=ruby
#
# [278] First Bad Version
#

# @lc code=start
# The is_bad_version API is already defined for you.
# @param {Integer} version
# @return {boolean} whether the version is bad
# def is_bad_version(version):

# @param {Integer} n
# @return {Integer}
def first_bad_version(n)
  left = 1
  right = n
  while left <= right
    mid = (left + right) / 2
    is_bad_version(mid) ? right = mid - 1 : left = mid + 1
  end
  left
end
# @lc code=end
