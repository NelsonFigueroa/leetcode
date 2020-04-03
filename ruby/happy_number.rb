# https://leetcode.com/problems/happy-number/

def is_happy(n, repeats = [])
  return true if n == 1

  # keep track of repeating values
  return false if repeats.include? n

  repeats << n

  # keep track of sum
  sum = 0

  # convert to array of integers and loop
  n.to_s.chars.map(&:to_i).each do |num|
    # get square of each digit and add to sum
    sum += num**2
  end

  is_happy(sum, repeats)
end
