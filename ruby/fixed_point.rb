# https://leetcode.com/problems/fixed-point/

def fixed_point(a)
  a.each_with_index do |value, index|
    return index if index == value
  end
  -1
end
