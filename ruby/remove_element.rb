# https://leetcode.com/problems/remove-element

def remove_element(nums, val)
  result = []

  nums.each do |num|
    result << num if num != val
  end

  nums.clear

  result.each do |num|
    nums << num
  end
end
