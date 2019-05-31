
# https://leetcode.com/problems/height-checker/submissions/

def height_checker(heights)
  sorted = heights.sort
  diff_counter = 0
  sorted.each_with_index do |value, index|
    unless heights[index] == sorted[index]
      diff_counter += 1 
    end
  end
  return diff_counter  
end