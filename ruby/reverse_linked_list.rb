# https://leetcode.com/problems/reverse-linked-list/

# Definition for singly-linked list.
# class ListNode
#   attr_accessor :val, :next
#   def initialize(val)
#     @val = val
#     @next = nil
#   end
# end

def reverse_list(head)
  values = []

  until head.nil?
    values << head.val
    head = head.next
  end

  values.reverse!

  reverse = ListNode.new(values.shift)
  head = reverse # head of new reversed linked list

  until values.empty?
    reverse.next = ListNode.new(values.shift)
    reverse = reverse.next
  end

  head
end
