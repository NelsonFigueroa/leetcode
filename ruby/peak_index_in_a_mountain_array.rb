# Ruby 2.6.3
# https://leetcode.com/problems/peak-index-in-a-mountain-array/

def peak_index_in_a_mountain_array(a)
	# get largest value in array
	mountain = a.sort.last

	a.each_with_index do |val, index|
		# return index if value matches largest value in array
		return index if val == mountain
	end
end

puts peak_index_in_a_mountain_array([0, 1, 2, 0])