# Ruby 2.5.3
# https://leetcode.com/problems/self-dividing-numbers/

def self_dividing_numbers(left, right)
  output_nums = []
  (left..right).each do |num|

    # split num into digits array
    digits = num.to_s.split("")
    # if num contains the digit zero, skip
    next if digits.include? '0'
    # loop through digits
    digit_index = 0 # to keep track of digit position
    digits.each do |digit|
      if num % digit.to_i == 0
        if digit_index == digits.length - 1 # check to see if this is the last digit
          # if it is divisible by all digits, add num to output array
          output_nums << num
          break
        end
      else
        # if num is not divisible by digit, move to next num
        break
      end
      # increment index position for each iteration
      digit_index += 1
    end
  end
  return output_nums
end 

# test
self_dividing_numbers(1, 22)