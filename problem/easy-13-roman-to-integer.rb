#
# @lc app=leetcode id=13 lang=ruby
#
# [13] Roman to Integer
#

# @lc code=start
# @param {String} s
# @return {Integer}
def roman_to_int(s)
  result = 0
  prev_value = 0
  roman_numerals = {
    I: 1,
    V: 5,
    X: 10,
    L: 50,
    C: 100,
    D: 500,
    M: 1000
  }

  s.chars.reverse.each do |key|
    current_value = roman_numerals[key.to_sym]
    if current_value < prev_value
      result -= current_value
    else
      result += current_value
    end
    prev_value = current_value
  end
  result
end
# @lc code=end
# p roman_numerals[:I]
