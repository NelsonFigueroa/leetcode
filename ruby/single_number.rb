# https://leetcode.com/problems/single-number/

# need to return num that is either different from previous, next numbers
# or the same as previous, next numbers
# as long as it isn't a number that appears twice

def single_number(nums)
    nums.sort!
    nums.each_with_index do |num, index|
        
        # when number is first (index == 0)
        if index == 0
            next_num = nums[index + 1]
            return num if num != next_num
            
        # when number is in the middle
        else
            prev_num = nums[index - 1]
            next_num = nums[index + 1]
            return num if (num == prev_num) && (num == next_num)
            return num if (num != prev_num) && (num != next_num)
        end
    end
end
