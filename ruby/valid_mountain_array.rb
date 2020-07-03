# https://leetcode.com/problems/valid-mountain-array/

def valid_mountain_array(a)
  return false if a.length < 3
  return false if a.max == a.last
  return false if a.max == a.first

  peak_reached = false

  a.each_index do |i|
    next if i.zero?
    return false if a[i] == a[i - 1]

    if peak_reached == false
      # continue if mountain is still increasing
      next if a[i] > a[i - 1]

      # the peak is reached if current number is not bigger than the previous
      peak_reached = true
    elsif peak_reached == true
      # continue is mountain is decreasing
      next if a[i] < a[i - 1]

      # if the current value is bigger, that means we hit another peak
      return false
    end
  end

  # if we never hit a peak, that means its not a mountain
  return false if peak_reached == false

  true
end
