# https://leetcode.com/problems/rotate-array/

# @return {Void} Do not return anything, modify nums in-place instead.
def rotate(nums, k)
  k.times do
    last = nums.last
    nums.pop
    nums.unshift(last)
  end
end
