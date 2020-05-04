# https://leetcode.com/problems/number-complement/

def find_complement(num)
  binary = num.to_s(2).chars

  binary.each_with_index do |digit, index|
    binary[index] = if digit == '1'
                      '0'
                    else
                      '1'
                    end
  end

  binary.join('').to_i(2)
end
