# https://leetcode.com/problems/third-maximum-number/

def third_max(nums)
  nums.uniq!
  return nums.max if nums.length < 3

  # unique nums, get max 3, get the minumum out of those 3
  nums.max(3).min
end
