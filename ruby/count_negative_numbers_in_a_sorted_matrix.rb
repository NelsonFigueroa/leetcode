# https://leetcode.com/problems/count-negative-numbers-in-a-sorted-matrix/

def count_negatives(grid)
  grid.flatten.reject { |n| n >= 0 }.count
end
