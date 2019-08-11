# Ruby 2.6.3
# https://leetcode.com/problems/squares-of-a-sorted-array

def sorted_squares(a)
  a.map { |num| num * num }.sort
end