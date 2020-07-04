# https://leetcode.com/problems/squares-of-a-sorted-array

# cool answer
# def sorted_squares(a)
#   a.map! { |num| num**2 }.sort
# end

# slightly faster
def sorted_squares(a)
  a.each_index do |i|
    a[i] = a[i]**2
  end

  a.sort
end
