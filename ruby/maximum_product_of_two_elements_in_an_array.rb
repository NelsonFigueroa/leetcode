# https://leetcode.com/problems/maximum-product-of-two-elements-in-an-array/

def max_product(nums)
  nums = nums.reject { |num| num == 1 }
  return 0 if nums.empty?
  return nums.first if nums.length == 1

  # sort nums
  # the largest ones are last, get last 2
  # subtract one from each of the last 2 numbers
  # then multiply them
  nums.sort.last(2).map { |num| num - 1 }.reduce(:*)
end
