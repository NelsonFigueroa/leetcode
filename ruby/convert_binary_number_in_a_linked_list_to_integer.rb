# https://leetcode.com/problems/convert-binary-number-in-a-linked-list-to-integer/

def get_decimal_value(head)
  val = ''
  until head.nil?
    val += head.val.to_s
    head = head.next
  end
  val.to_i(2) # convert to decimal from binary
end
