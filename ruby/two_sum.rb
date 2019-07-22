# https://leetcode.com/problems/two-sum/

def two_sum(nums, target)
  nums.each_with_index do |num1, index1|
    nums.each_with_index do |num2, index2|
      # skip if the index is the same, cant use the same index twice
      unless (index1 == index2)
        if (num1 + num2) == target
          puts "Indices #{index1} #{index2}"
          return [index1, index2]
        end
      end
    end
  end
end
