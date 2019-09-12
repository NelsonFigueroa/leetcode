# https://leetcode.com/problems/flipping-an-image/

# a is an array containing arrays
def flip_and_invert_image(a)
  # loop through each array within main array
  a.each do |array|
    array.reverse!
    # inline map!, if value is 1, subtract 1. Else, add 1.
    array.map! { |value| value == 1 ? value -= 1 : value += 1 }
  end
end