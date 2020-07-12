# https://leetcode.com/problems/valid-palindrome/

def is_palindrome(s)
  s.gsub!(/[^0-9a-z]/i, '')
  s.downcase!

  reverse = s.reverse
  s == reverse
end
