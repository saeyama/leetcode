#
# @lc app=leetcode id=14 lang=ruby
#
# [14] Longest Common Prefix
#

# @lc code=start
# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  result = ''
  min_size = strs.map(&:size).min

  0.upto(min_size - 1) do |i|
    char = strs[0][i]
    return result unless strs.all? { |str| str[i] == char }

    result += char
  end
  result
end

# @lc code=end
