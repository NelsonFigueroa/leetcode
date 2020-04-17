# https://leetcode.com/problems/find-numbers-with-even-number-of-digits/

def find_numbers(nums)
  even_digit_count = 0
  nums.each do |num|
    if num.digits.count.even?
      even_digit_count += 1 
    end
  end
  even_digit_count
end
