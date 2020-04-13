# https://leetcode.com/problems/n-repeated-element-in-size-2n-array/

def repeated_n_times(a)
  element_counts = {}

  a.each do |element|
    if element_counts.key?(element)
      # if key already exists, increment the count (value)
      element_counts[element] = element_counts[element] + 1
    else
      # if key doesn't exist, add it to hash with count 1
      element_counts[element] = 1
    end
  end

  # return the element that is repeated
  # check .values of hash and find the .max value
  element_counts.each do |element, count|
    return element if count == element_counts.values.max
  end
end


answ = repeated_n_times([1, 2, 3, 3])

puts answ
