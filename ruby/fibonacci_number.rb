# Ruby 2.6.3
# https://leetcode.com/problems/fibonacci-number/

def fib(n)
  return n if n == 0 || n == 1

  (fib(n - 1) + fib(n - 2))
end

puts fib(10)
