# https://leetcode.com/problems/reverse-integer/

def reverse(x)
  negative = x.negative?

  x = reverse_string(x.to_s.split(''))
  x = x.join('').to_i

  x *= -1 if negative

  return 0 if x > 2_147_483_647
  return 0 if x < -2_147_483_648

  x
end

def reverse_string(string)
  reverse = []

  string.length.times do
    reverse << string.pop
  end

  reverse
end
