# https://leetcode.com/problems/remove-duplicates-from-sorted-array/

def remove_duplicates(nums)
  ### the easy way ###
  # nums.uniq!
  # nums.length

  ### manual way ###

  # array is sorted, we can keep track of the previous value
  current = nil
  nums.each_with_index do |num, index|
    nums[index] = nil if num == current
    current = num
  end

  nums.delete(nil)

  nums.length
end
