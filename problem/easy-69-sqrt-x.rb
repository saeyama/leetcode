#
# @lc app=leetcode id=69 lang=ruby
#
# [69] Sqrt(x)
#

# @lc code=start
# @param {Integer} x
# @return {Integer}
def my_sqrt(x)
  # Math.sqrt(x).truncate
  # Math.sqrt(x).to_i
  # (x ** 0.5).to_i
  left = 0
  right = x
  while left <= right
    mid = (left + right) / 2

    if mid * mid > x
      right = mid - 1
    elsif mid * mid < x
      left = mid + 1
    else
      return mid
    end
  end
  right
end
# @lc code=end
