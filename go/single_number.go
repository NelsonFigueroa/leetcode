// https://leetcode.com/problems/single-number/

package main

import (
	"fmt"
	"sort"
)

func singleNumber(nums []int) int {
	sort.Ints(nums)
	answer := 0

	for i := 0; i < len(nums); i++ {

		if i == len(nums)-1 {
			answer = nums[i]
			break
		} else if i == 0 {
			if nums[i] != nums[i+1] {
				answer = nums[i]
				break
			}
		} else {
			if (nums[i] == nums[i-1]) && (nums[i] == nums[i+1]) {
				answer = nums[i]
				break
			}

			if (nums[i] != nums[i-1]) && (nums[i] != nums[i+1]) {
				answer = nums[i]
				break
			}
		}
	}
	return answer
}

