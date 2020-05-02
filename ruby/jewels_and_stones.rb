# https://leetcode.com/problems/jewels-and-stones/

def num_jewels_in_stones(j, s)
  jewels = j.chars
  stones = s.chars

  counter = 0
  stones.each do |stone|
    counter += 1 if jewels.include? stone
  end
  counter
end
