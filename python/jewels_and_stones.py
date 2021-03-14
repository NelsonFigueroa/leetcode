# https://leetcode.com/problems/jewels-and-stones/

class Solution:
    def numJewelsInStones(self, jewels: str, stones: str) -> int:
        jewel_count = 0
        for jewel in jewels:
            for stone in stones:
                if jewel == stone:
                    jewel_count += 1

        return jewel_count


result = Solution.numJewelsInStones(Solution, 'aA', 'aAAbbbb')
print(result)