# https://leetcode.com/problems/two-sum/

def two_sum(nums, target)
  nums.each_with_index do |num, index|
    second_num = target - num
    next unless nums.include?(second_num)

    second_index = nums.index(second_num)
    return [index, second_index] if index != second_index
  end
end
