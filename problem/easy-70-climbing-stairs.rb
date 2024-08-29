#
# @lc app=leetcode id=70 lang=ruby
#
# [70] Climbing Stairs
#

# @lc code=start
# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
  return n if n <= 2

  arr = [0, 1, 2]
  3.upto(n) do |i|
    arr[i] = arr[i - 1] + arr[i - 2]
  end
  arr[n]
end
# @lc code=end
