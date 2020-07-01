# https://leetcode.com/problems/merge-sorted-array/

# @return {Void} Do not return anything, modify nums1 in-place instead.
def merge(nums1, _m, nums2, n)
  n.times do
    # remove trailing elements that are just filler
    nums1.pop
  end

  merged = nums1 + nums2

  merged.sort!

  nums1.clear

  merged.each do |num|
    nums1 << num
  end
end
