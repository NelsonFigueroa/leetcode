# Python 3.7.0
# https://leetcode.com/problems/reverse-integer/

class Solution:
  def reverse(self, x):
    x = str(x)
    if x[0][:1] == '-':
      # Remove first character
      x = x[1:]
      # Reverse 
      x = x[::-1]
      # Re-append dash
      x = '-' + x     
    else:
      # Reverse
      x = x[::-1]

    # Convert back to int
    x = int(x)

    if x > 2147483647 or x < -2147483648:
      return 0
    else:
      return x