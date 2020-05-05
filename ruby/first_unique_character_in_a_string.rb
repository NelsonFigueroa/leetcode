# https://leetcode.com/problems/first-unique-character-in-a-string/

def first_uniq_char(s)
  return -1 if s.empty?

  s = s.chars
  chars = s.uniq
  first_unique_char = chars.reject { |char| s.count(char) > 1 }.first

  index = s.index(first_unique_char)
  return -1 if index.nil?

  index
end
