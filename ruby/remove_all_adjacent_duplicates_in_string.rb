# Ruby 2.6.3
# https://leetcode.com/problems/remove-all-adjacent-duplicates-in-string/

def remove_duplicates(s)
  s = s.split('')

  s.each_with_index do |char, index|
    puts "Char: #{char}, Index: #{index}"

    # make sure there is a previous char to inspect, don't go out of bounds
    # if current char is equal to previous char, delete both
    if (index != 0) && (char == s[index - 1])
      puts "Deleting Char: #{char} @ Index: #{index}"
      puts "Deleting Char: #{s[index - 1]} @ Index: #{index - 1}"
      s.delete_at(index)
      s.delete_at(index - 1)
      puts s.join('')

      remove_duplicates(s.join(''))
    end
  end

  # Maybe i dont understand how recursion works
  # this is returning 3 times!
  # the recursion is 3 times thats why
  puts "Returning array"
  return s.join('')
end