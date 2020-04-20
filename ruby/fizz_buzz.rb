# https://leetcode.com/problems/fizz-buzz/

def fizz_buzz(n)
  output = []

  n.times do |num|
    num += 1
    result = num.to_s
    result = 'Fizz' if num % 3 == 0
    result = 'Buzz' if num % 5 == 0
    result = 'FizzBuzz' if (num % 3 == 0) && (num % 5 == 0)
    output << result
  end

  output
end
