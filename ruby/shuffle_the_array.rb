# https://leetcode.com/problems/shuffle-the-array/

def shuffle(nums, n)
  temp = []
  n.times do
    temp << nums.shift
  end

  result = []

  n.times do |n|
    result << temp[n]
    result << nums[n]
  end

  result
end
