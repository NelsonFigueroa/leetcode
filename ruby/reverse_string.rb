# https://leetcode.com/problems/reverse-string/

def reverse_string(s)
  # the easy solution:
  # return s.reverse!

  # the hard solution:
  characters = s.split('')
  reverse = []

  length = characters.length

  while (length >= 0) do
    reverse << characters[length]
    
    length -= 1
  end

  return reverse.join('')
end

puts reverse_string("Hello")

# A stack could have been used too
# Add all characters to a stack
# pop stack until no characters left, and the string will be reversed!