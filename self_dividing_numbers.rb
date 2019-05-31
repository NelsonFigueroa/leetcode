def self_dividing_numbers(left, right)
  output_nums = []
  (left..right).each do |num|

    # split num into digits array
    digits = num.to_s.split("")
    # if num contains the digit zero, skip
    next if digits.include? '0'
    # loop through digits
    digits.each do |digit|
      #test if num % digit is 0
    end
    # if it passes all digits, add to output array
    # else, skip and go to next num
  end
end 

self_dividing_numbers(1, 22)