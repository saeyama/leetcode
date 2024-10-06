#
# @lc app=leetcode id=125 lang=ruby
#
# [125] Valid Palindrome
#

# @lc code=start
# @param {String} s
# @return {Boolean}
def is_palindrome(s)
  str = s.gsub(/[^a-zA-Z0-9]/, '').downcase
  str == str.reverse
end
# @lc code=end
