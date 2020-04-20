# https://leetcode.com/problems/unique-number-of-occurrences/

def unique_occurrences(arr)
  count = arr.each_with_object(Hash.new(0)) { |num, hash| hash[num] += 1; }

  occurrences = []
  count.each_key do |key|
    occurrences << count[key]
  end

  # arrays should match in length if all occurrences are different
  return true if occurrences.length == occurrences.uniq.length

  false
end
