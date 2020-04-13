# https://leetcode.com/problems/height-checker/

def height_checker(heights)
  sorted = heights.sort
  diff_counter = 0
  sorted.each_with_index do |_value, index|
    diff_counter += 1 unless heights[index] == sorted[index]
  end
  diff_counter
end
