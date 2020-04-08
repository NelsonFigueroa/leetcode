# https://leetcode.com/problems/middle-of-the-linked-list/

def middle_node(head)
  count = 0
  pointer = head
  until pointer.nil?
    pointer = pointer.next
    count += 1
  end

  if count.odd?
    middle = count - (count / 2)
  else
    middle = count - (count / 2) + 1
  end

  pointer = head
  i = 1
  while i < middle
    pointer = pointer.next
    i += 1
  end

  pointer
end
