# https://leetcode.com/problems/maximum-69-number/

def maximum69_number(num)
  digits = num.to_s.split('')

  digits.each_with_index do |digit, index|
    if digit == '6'
      digits[index] = '9'
      break
    end
  end

  digits = digits.join.to_i
  digits
end
