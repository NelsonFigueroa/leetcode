# https://leetcode.com/problems/find-numbers-with-even-number-of-digits/

class Solution:
    def findNumbers(self, nums):
        even_numbers = 0
        for num in nums:
            if len(str(num)) % 2 == 0:
                even_numbers += 1

        return even_numbers


result = Solution.findNumbers(Solution, [12,345,2,6,7896])
print(result)