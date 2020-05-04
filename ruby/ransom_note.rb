# https://leetcode.com/problems/ransom-note/

def can_construct(ransom_note, magazine)
  ransom_letter_count = Hash.new(0)
  magazine_letter_count = Hash.new(0)

  ransom_note.chars.each { |char| ransom_letter_count[char] += 1 }
  magazine.chars.each { |char| magazine_letter_count[char] += 1 }

  ransom_letter_count.each do |char, _count|
    return false if ransom_letter_count[char] > magazine_letter_count[char]
  end

  true
end
