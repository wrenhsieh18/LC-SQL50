# https://leetcode.com/problems/search-insert-position/?envType=study-plan-v2&envId=top-interview-150
class Solution:
    def searchInsert(self, nums: List[int], target: int) -> int:
        for i in range(0, len(nums)):
            if nums[i] >= target:
                return i
        return len(nums)

