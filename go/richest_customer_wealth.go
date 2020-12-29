// https://leetcode.com/problems/richest-customer-wealth/

package main

import (
	"fmt"
)

func findMax(a []int) int {
	max := a[0]
	for _, value := range a {
		if value > max {
			max = value
		}
	}
	return max
}

func maximumWealth(accounts [][]int) int {
	sums := []int{}

	// for each array in accounts[][]
	for i := 0; i < len(accounts); i++ {
		sum := 0
		// for each int in account
		for j := 0; j < len(accounts[i]); j++ {
			sum += accounts[i][j]
		}

		sums = append(sums, sum)
	}

	return findMax(sums)
}

func main() {
	wealths := [][]int{
		{1, 2, 3},
		{3, 2, 1},
	}
	fmt.Println(maximumWealth(wealths))
}
