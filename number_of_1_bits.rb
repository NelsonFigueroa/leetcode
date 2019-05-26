# Ruby 2.5.3
# https://leetcode.com/problems/number-of-1-bits/

def hamming_weight(n)
  puts "n is #{n}"
  counter = 0
  # ruby interprets binary as decimal, so use to_s(2) to keep number as decimal
  bits = n.to_s(2).split('')
  bits.each do |bit|
    counter = counter + 1 if bit == '1'
  end
  return counter
end