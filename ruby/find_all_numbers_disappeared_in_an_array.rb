# https://leetcode.com/problems/find-all-numbers-disappeared-in-an-array/

def find_disappeared_numbers(nums)
  return nums if nums.empty?

  output = []
  nums.length.times do |i|
    output << i + 1
  end

  output - nums
end
