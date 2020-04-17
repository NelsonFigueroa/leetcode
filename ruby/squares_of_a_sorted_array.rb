# https://leetcode.com/problems/squares-of-a-sorted-array

def sorted_squares(a)
  a.map! { |num| num ** 2 }.sort
end