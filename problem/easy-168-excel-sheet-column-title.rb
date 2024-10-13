#
# @lc app=leetcode id=168 lang=ruby
#
# [168] Excel Sheet Column Title
#

# @lc code=start
# @param {Integer} column_number
# @return {String}
def convert_to_title(column_number)
  result = ''
  column = {}

  ('A'..'Z').each_with_index { |key, i| column[i] = key }
  while column_number != 0
    column_number -= 1
    result = column[column_number % 26] + result
    column_number /= 26
  end
  result
end
# @lc code=end
