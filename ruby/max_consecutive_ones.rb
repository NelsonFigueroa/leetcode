# https://leetcode.com/problems/max-consecutive-ones/

def find_max_consecutive_ones(nums)
  max_consecutive = 0
  temp_count = 0
  nums.each do |num|
    if num == 1
      temp_count += 1

      max_consecutive = temp_count if temp_count > max_consecutive
    else
      temp_count = 0
    end
  end
  max_consecutive
end
