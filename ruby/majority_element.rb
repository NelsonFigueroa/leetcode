# https://leetcode.com/problems/majority-element/

def majority_element(nums)
  half_length = (nums.length / 2.0)
  unique = nums.uniq # to reduce time to loop throgh every element

  unique.reject { |num| nums.count(num) < half_length }.first
end
