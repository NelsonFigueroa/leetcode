# https://leetcode.com/problems/palindrome-number/

class Solution:
    def isPalindrome(self, x: int):
        if x < 0:
            return False

        x = str(x)
        reverse = x[::-1]

        if x == reverse:
            return True

        return False
        
result = Solution.isPalindrome(Solution, 121)
print(result)