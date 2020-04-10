# https://leetcode.com/problems/valid-anagram/

def is_anagram(s, t)
  return true if s.chars.sort == t.chars.sort

  false
end
