# https://leetcode.com/problems/sort-colors/

# @return {Void} Do not return anything, modify nums in-place instead.
def sort_colors(nums)
  zero_count = 0
  one_count = 0
  two_count = 0

  nums.each do |num|
    if num.zero?
      zero_count += 1
    elsif num == 1
      one_count += 1
    else
      two_count += 1
    end
  end

  nums.clear

  zero_count.times do
    nums << 0
  end

  one_count.times do
    nums << 1
  end

  two_count.times do
    nums << 2
  end
end
