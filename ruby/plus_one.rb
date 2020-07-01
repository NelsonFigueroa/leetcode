# https://leetcode.com/problems/plus-one/

def plus_one(digits)
  result = digits.map(&:to_s).join('').to_i
  result += 1
  result.to_s.split('').map(&:to_i)
end
