# https://leetcode.com/problems/last-stone-weight/

def last_stone_weight(stones)
  until stones.length <= 1
    stones.sort!.reverse!
    temp = stones.shift(2)
    result = (temp[0] - temp[1]).abs

    stones << result
    stones.reject(&:zero?)
  end

  return 0 if stones.empty?

  stones[0]
end
