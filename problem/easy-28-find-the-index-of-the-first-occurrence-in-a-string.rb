#
# @lc app=leetcode id=28 lang=ruby
#
# [28] Find the Index of the First Occurrence in a String
#

# @lc code=start
# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
  # result = (haystack =~ /#{needle}/)
  # result.nil? ? -1 : result

  # result = haystack.index(needle)
  # result.nil? ? -1 : result

  haystack.include?(needle) ? haystack.index(needle) : -1
end
# @lc code=end
