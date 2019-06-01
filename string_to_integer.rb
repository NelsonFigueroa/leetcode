# Ruby 2.5.0

# https://leetcode.com/problems/string-to-integer-atoi/

INT_MIN = -2147483648
INT_MAX = 2147483647

def atoi(string)

  # Initialize integer to be returned
  integer = ''

  # Remove leading whitespace 
  string = string.lstrip

  # If first character is not a number, or +/-, return 0, 
  if /[^0-9]/.match(string[0])
    if string[0] != '+'
      if string[0] != '-'
        return 0
      end
    end
  end

  # Check if first char is + or -
  if string[0] == '+' || string[0] == '-'
    # If it is, add to integer << 
    integer << string[0]
    # Remove it from the original string
    string = string[1..-1]
  end

  # Split characters of string
  chars = string.split('')

  # Loop through each character
  chars.each do |char|
    # Iterate, add to 'integer' until a non-digit character is found
    if /[0-9]/.match(char)
      integer << char
    else
      break
    end
  end

  # If integer is below minimum 32-bit value, return INT_MIN
  if integer.to_i < INT_MIN.to_i
    return INT_MIN
  end

  # If integer is greater than maximum 32-bit value, return INT_MAX
  if integer.to_i > INT_MAX.to_i
    return INT_MAX
  end

  return integer.to_i
end
