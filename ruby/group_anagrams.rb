# https://leetcode.com/problems/group-anagrams/

def group_anagrams(strs)
  anagrams = {}

  strs.each do |str|
    sorted = str.chars.sort

    anagrams[sorted] = [] unless anagrams.key?(sorted)
    anagrams[sorted] << str
  end

  result = []
  anagrams.each_key do |key|
    result << anagrams[key]
  end
  result
end
