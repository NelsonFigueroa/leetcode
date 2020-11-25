// https://leetcode.com/problems/arranging-coins/

package main

import (
	"fmt"
)

func arrangeCoins(n int) int {
	iterator := 0
	for iterator < n {
		iterator++
		n = n - iterator
	}

	return iterator
}

func main() {
	fmt.Println(arrangeCoins(5))
}
