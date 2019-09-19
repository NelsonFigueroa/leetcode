# Ruby 2.6.3
# https://leetcode.com/problems/remove-all-adjacent-duplicates-in-string/
def remove_duplicates(s)
  # puts "Current string: #{s}"
  answer = s
  s = s.split('')

  s.each_index do |index|
    # puts "Char: #{char}, Index: #{index}"

    # make sure there is a previous char to inspect, don't go out of bounds
    # if current char is equal to previous char, delete both
    if index == 0
      next
    elsif s[index] == s[index - 1]
      # puts "Deleting Char: #{char} @ Index: #{index}"
      # puts "Deleting Char: #{s[index - 1]} @ Index: #{index - 1}"
      s.delete_at(index)
      s.delete_at(index - 1)
      # puts "Resulting string: #{s.join('')}"
      
      answer = remove_duplicates(s.join(''))
    end
  end

  # puts "Returning array"
  return answer
end
