# https://leetcode.com/problems/reverse-string/

def reverse_string(s)
  # the easy solution:
  # return s.reverse!

  # the hard solution:
  reverse = []

  s.length.times do
    reverse << s.pop
  end

  reverse.each do |char|
    s << char
  end

  s
end
