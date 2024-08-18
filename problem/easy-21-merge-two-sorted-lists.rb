#
# @lc app=leetcode id=21 lang=ruby
#
# [21] Merge Two Sorted Lists
#

# @lc code=start
# Definition for singly-linked list.
class ListNode
  attr_accessor :val, :next

  def initialize(val = 0, _next = nil)
    @val = val
    @next = _next
  end
end
# @param {ListNode} list1
# @param {ListNode} list2
# @return {ListNode}
def merge_two_lists(list1, list2)
  merge_list = ListNode.new
  current_list = merge_list

  while list1 && list2
    if list1.val < list2.val
      current_list.next = list1
      list1 = list1.next
    else
      current_list.next = list2
      list2 = list2.next
    end
    current_list = current_list.next
  end
  current_list.next = list1 || list2
  merge_list.next
end
# @lc code=end

# list1 = ListNode.new(1, ListNode.new(2, ListNode.new(4)))
# list2 = ListNode.new(1, ListNode.new(3, ListNode.new(4)))

