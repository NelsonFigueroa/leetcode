def max_sub_array(nums)
  length = nums.length
  return nums[0] if length == 1

  max_sum = nums.first

  start = 0
  while start < length
    ending = 1

    while ending <= length
      sum = nums.slice(start, ending).sum
      max_sum = sum if sum > max_sum
      ending += 1
    end

    start += 1
  end

  max_sum
end
