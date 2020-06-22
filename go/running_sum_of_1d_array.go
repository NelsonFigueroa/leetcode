// https://leetcode.com/problems/running-sum-of-1d-array/

package main

import (
	"fmt"
)

// used to sum array elements
func sumElements(nums []int) int {
	result := 0
	for _, v := range nums {
		result += v
	}
	return result
}

func runningSum(nums []int) []int {

	sums := []int{}

	for index, _ := range nums {
		slice := nums[0 : index+1] // index is off by 1
		sum := sumElements(slice)
		sums = append(sums, sum)
	}

	return sums
}

func main() {
	input := []int{1, 2, 3, 4}
	fmt.Println(runningSum(input))
}
