# https://leetcode.com/problems/how-many-numbers-are-smaller-than-the-current-number/

def smaller_numbers_than_current(nums)
  output = []
  nums.each do |num|
    output << nums.reject { |n| n >= num }.count
  end
  output
end
