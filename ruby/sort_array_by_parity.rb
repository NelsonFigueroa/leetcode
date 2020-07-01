# https://leetcode.com/problems/sort-array-by-parity/

def sort_array_by_parity(a)
  output = []

  # loop to add even numbers to output array
  a.each do |num|
    output << num if num.even?
  end

  # loop to add odd numbers to output array
  a.each do |num|
    output << num if num.odd?
  end

  output
end
