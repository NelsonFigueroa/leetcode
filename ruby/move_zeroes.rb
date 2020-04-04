# https://leetcode.com/problems/move-zeroes/

def move_zeroes(nums)
  zeroes_count = nums.count(0)
  nums.delete(0)

  zeroes_count.times do
    nums << 0
  end

  nums
end
