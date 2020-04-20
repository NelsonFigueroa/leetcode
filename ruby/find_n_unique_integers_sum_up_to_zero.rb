# https://leetcode.com/problems/find-n-unique-integers-sum-up-to-zero/

def sum_zero(n)
  output = []

  if n.odd?
    output << 0

    n -= 1
  end

  n /= 2

  n.times do |i|
    i += 1
    output << i
  end

  n.times do |i|
    i += 1
    output << i * -1
  end

  output
end
