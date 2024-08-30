# frozen_string_literal: true

#
# @lc app=leetcode id=83 lang=ruby
#
# [83] Remove Duplicates from Sorted List
#

# @lc code=start
# Definition for singly-linked list.
# class ListNode
#   attr_accessor :val, :next

#   def initialize(val = 0, _next = nil)
#     @val = val
#     @next = _next
#   end
# end

# @param {ListNode} head
# @return {ListNode}
def delete_duplicates(head)
  current_node = head

  while current_node&.next
    if current_node.val == current_node.next.val
      current_node.next = current_node.next.next
    else
      current_node = current_node.next
    end
  end

  head
end
# @lc code=end
