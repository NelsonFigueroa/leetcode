# Ruby 2.5.3
# https://leetcode.com/problems/hamming-distance/

def hamming_distance(x, y)
  # convert integers to binary
  x_binary = x.to_s(2)
  y_binary = y.to_s(2)

  # if one integer has more bits than the other, add 0's for padding
  if x_binary.length > y_binary.length
    (x_binary.length - y_binary.length).abs.times do
      y_binary.prepend("0")
    end
  elsif y_binary.length > x_binary.length
    (x_binary.length - y_binary.length).abs.times do 
      x_binary.prepend("0")
    end
  end

  # split into arrays of chars
  x_bits = x_binary.split('')
  y_bits = y_binary.split('')

  # hamming distance counter
  distance = 0

  # iterate through bits and compare
  x_bits.length.times do |i|
    if x_bits[i].to_i != y_bits[i].to_i
      distance = distance + 1
    end
  end
  return distance
end
