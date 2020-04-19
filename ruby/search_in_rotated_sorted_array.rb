# https://leetcode.com/problems/search-in-rotated-sorted-array/

def search(nums, target)
  # this one is slower
  # if nums.include? target
  #   return nums.index(target)
  # else
  #   return -1
  # end

  # this one is faster
  if !(nums & [target]).empty?
    nums.index(target)
  else
    -1
  end
end
