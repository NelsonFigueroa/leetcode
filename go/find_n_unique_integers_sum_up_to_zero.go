// https://leetcode.com/problems/find-n-unique-integers-sum-up-to-zero/

package main

import (
	"fmt"
)

func sumZero(n int) []int {
	result := []int{}

	if n%2 != 0 {
		result = append(result, 0)
		n -= 1
	}

	n = n / 2

	for i := 1; i <= n; i++ {
		result = append(result, i) // positive integer
		result = append(result, i*-1) // negative integer
	}

	return result
}

func main() {
	fmt.Println(sumZero(5))
}
