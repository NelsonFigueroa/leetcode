# https://leetcode.com/problems/fizz-buzz/

class Solution:
    def fizzBuzz(self, n: int):
      result = []
      for x in range(n):
        if x % 3 == 0:
          result.append("Fizz")
        elif x % 5 == 0:
          result.append("Buzz")
        else:
          result.append(str(x))

      return result

result = Solution.fizzBuzz(Solution, 1)
print(result)