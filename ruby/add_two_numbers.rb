# Ruby 2.6.3
# https://leetcode.com/problems/add-two-numbers/
node definition
class ListNode
	attr_accessor :val, :next

	def initialize(val)
		@val = val
		@next = nil
	end
end

# Linked lists for testing

# linked list 1
l1 = ListNode.new(1)

# linked list 2
l2 = ListNode.new(9)
l2.next = ListNode.new(9)

# Actual answer
def add_two_numbers(l1, l2)
	num1 = ''
	num2 = ''

	# get number from first linked list
	loop do
		node = l1
		num1 = num1 + node.val.to_s
	  break if l1.next.nil?
	  l1 = l1.next
	end 

	# get number from second linked list
	loop do
		node = l2
		num2 = num2 + node.val.to_s
	  break if l2.next.nil?
	  l2 = l2.next
	end 

	# reverse the numbers before adding
	num1.reverse!
	num2.reverse!

	# add numbers
	result = (num1.to_i + num2.to_i).to_s

	# reverse numbers to place them in a linked list again
	result.reverse!
	sum_values = result.split('')

	# create the first one, remove from sum_values, then loop through remainder (if any)
	linked_list_sum = ListNode.new(sum_values.first)
	linked_list_head = linked_list_sum # save head for returning
	sum_values.shift # remove first val

	# loop through remaining values
	sum_values.each do |val|
		linked_list_sum.next = ListNode.new(val)
		linked_list_sum = linked_list_sum.next
	end

	return linked_list_head
end

add_two_numbers(l1, l2)
