#
# @lc app=leetcode id=141 lang=ruby
#
# [141] Linked List Cycle
#

# @lc code=start
# Definition for singly-linked list.
# class ListNode
#   attr_accessor :val, :next
#   def initialize(val)
#     @val = val
#     @next = nil
#   end
# end

# @param {ListNode} head
# @return {Boolean}
def hasCycle(head)
  return false if head.nil? || head.next.nil?

  one_foward = head
  two_foward = head

  while two_foward&.next
    one_foward = one_foward.next
    two_foward = two_foward.next.next

    return true if one_foward == two_foward
  end
  false
end
# @lc code=end

# node1 = ListNode.new(3)
# node2 = ListNode.new(2)
# node3 = ListNode.new(0)
# node4 = ListNode.new(-4)

# node1.next = node2
# node2.next = node3
# node3.next = node4
# node4.next = node2

# p hasCycle(node1)
