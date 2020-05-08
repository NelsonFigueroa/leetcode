# https://leetcode.com/problems/majority-element-ii/

def majority_element(nums)
  half_length = (nums.length / 3.0)
  unique = nums.uniq
  unique.select { |num| nums.count(num) > half_length }
end
