# Ruby 2.5.3
# https://leetcode.com/problems/reverse-words-in-a-string-iii/

def reverse_words(s)
  output = []
  words = s.split(" ")
  words.each do |word|
      output << word.reverse! 
  end
  return output.join(" ")
end