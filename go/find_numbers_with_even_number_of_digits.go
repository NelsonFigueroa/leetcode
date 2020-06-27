// https://leetcode.com/problems/find-numbers-with-even-number-of-digits/

package main

import (
	"fmt"
	"strconv"
)

func findNumbers(nums []int) int {
	evenCount := 0

	for _, val := range nums {
		// convert to string, get length, see if it is even
		if len(strconv.Itoa(val))%2 == 0 {
			evenCount++
		}
	}

	return evenCount
}

func main() {
	numbers := []int{12, 345, 2, 6, 7896}
	fmt.Println(findNumbers(numbers))
}
