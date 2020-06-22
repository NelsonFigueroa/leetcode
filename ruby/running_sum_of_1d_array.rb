# https://leetcode.com/problems/running-sum-of-1d-array/

def running_sum(nums)
  sums = []
  nums.each_with_index do |_, i|
    sums << nums.slice(0..i).sum
  end
  sums
end

puts running_sum([1, 1, 1, 1, 1])
