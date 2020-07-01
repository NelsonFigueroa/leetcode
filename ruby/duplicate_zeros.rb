# https://leetcode.com/problems/duplicate-zeros/

# @return {Void} Do not return anything, modify arr in-place instead.
def duplicate_zeros(arr)
  result = []
  arr.each do |num|
    result << num
    result << 0 if num.zero?
  end

  original_length = arr.length
  arr.clear

  result.each do |num|
    break if arr.length >= original_length

    arr << num
  end
end
