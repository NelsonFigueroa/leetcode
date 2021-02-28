# https://leetcode.com/problems/fizz-buzz/

class Solution:
    def fizzBuzz(self, n: int):
      result = []
      x = 1
      while x <= n:
        if x % 3 == 0 and x % 5 == 0:
          result.append("FizzBuzz")
        elif x % 3 == 0:
          result.append("Fizz")
        elif x % 5 == 0:
          result.append("Buzz")
        else:
          result.append(str(x))

        x += 1

      return result

result = Solution.fizzBuzz(Solution, 1)
print(result)