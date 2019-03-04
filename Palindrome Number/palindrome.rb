# Ruby 2.5.3
# https://leetcode.com/problems/palindrome-number/

# input integer, return boolean
def is_palindrome(x)
  x.to_s == x.to_s.reverse!
end

puts is_palindrome(1)
puts is_palindrome(121)
puts is_palindrome(123454321)
