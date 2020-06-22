// https://leetcode.com/problems/fibonacci-number/

package main

import (
	"fmt"
)

func fib(N int) int {
	if N == 1 || N == 0 {
		return N
	}

	return (fib(N-1) + fib(N-2))
}

func main() {
	fmt.Println(fib(5))
}
