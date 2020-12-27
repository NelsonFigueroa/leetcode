// https://leetcode.com/problems/fizz-buzz/submissions/

package main

import (
	"fmt"
	"strconv"
)

func fizzBuzz(n int) []string {
	result := []string{} // declare empty slice
	var str string       // placeholder for values to add to array
	for i := 1; i <= n; i++ {
		if i%3 == 0 && i%5 == 0 {
			str = "FizzBuzz"
		} else if i%3 == 0 {
			str = "Fizz"
		} else if i%5 == 0 {
			str = "Buzz"
		} else {
			str = strconv.Itoa(i)
		}

		result = append(result, str)
	}

	return result
}

func main() {
	fmt.Println(fizzBuzz(15))
}
