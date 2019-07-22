# Ruby 2.5.3
# https://leetcode.com/problems/jewels-and-stones/

def num_jewels_in_stones(j, s)
  jewels = j.to_s.split('')
  stones = s.to_s.split('')

  counter = 0
  stones.each do |stone|
    if jewels.include? stone
      counter = counter + 1
    end
  end
  return counter
end