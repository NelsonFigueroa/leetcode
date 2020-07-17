# https://leetcode.com/problems/reverse-words-in-a-string-iii/

def reverse_words(s)
  output = []
  words = s.split(' ')
  words.each do |word|
    output << word.reverse!
  end
  output.join(' ')
end
