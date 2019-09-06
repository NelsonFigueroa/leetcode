# Ruby 2.6.3
# https://leetcode.com/problems/sort-array-by-parity-ii/

def sort_array_by_parity_ii(a)
  even_nums = []
  odd_nums = []
  
  # separating even and odd numbers
  a.each do |num|
    if num.even?
      even_nums << num
    elsif num.odd?
      odd_nums << num
    end
  end

  output_array = []

  # number of times needed to iterate to account for all numbers
  max_length = even_nums.length + odd_nums.length

  # iterator to use when determining when to add even or odd numbers
  iterator = 0
  until iterator > max_length do
    if iterator % 2 == 0
      output_array << even_nums.shift unless even_nums.empty?
    elsif iterator % 2 != 0
      output_array << odd_nums.shift unless odd_nums.empty?
    end

    iterator += 1
  end

  return output_array
end

puts sort_array_by_parity_ii([1, 2, 3, 4, 5])