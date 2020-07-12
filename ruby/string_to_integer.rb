# https://leetcode.com/problems/string-to-integer-atoi/

def my_atoi(string)
  # Remove whitespace
  string = string.strip
  string = string.to_i
  # If integer is below minimum 32-bit value
  return -2_147_483_648 if string < -2_147_483_648
  # If integer is greater than maximum 32-bit value
  return 2_147_483_647 if string > 2_147_483_647

  string
end
