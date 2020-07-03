# https://leetcode.com/problems/arranging-coins/submissions/

def arrange_coins(n)
  iterator = 1
  staircases = 0

  until iterator > n
    n -= iterator
    iterator += 1
    staircases += 1
  end

  staircases
end
