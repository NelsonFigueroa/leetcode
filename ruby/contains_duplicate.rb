# https://leetcode.com/problems/contains-duplicate/

def contains_duplicate(nums)
  return false if nums.uniq.length == nums.length

  true
end
