#
# @lc app=leetcode id=20 lang=ruby
#
# [20] Valid Parentheses
#

# @lc code=start
# @param {String} s
# @return {Boolean}
def is_valid(s)
  parentheses_arr = []
  parentheses = { '(' => ')', '{' => '}', '[' => ']' }
  s.chars.each do |char|
    if parentheses.key?(char)
      parentheses_arr << char
    elsif parentheses.value?(char)
      return false if parentheses_arr.empty? ||
                      parentheses[parentheses_arr[-1]] != char

      parentheses_arr.pop if parentheses[parentheses_arr[-1]] == char
    end
  end
  parentheses_arr.empty?
end
# @lc code=end
