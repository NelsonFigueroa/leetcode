// https://leetcode.com/problems/kids-with-the-greatest-number-of-candies/submissions/

package main

import (
	"fmt"
)

func kidsWithCandies(candies []int, extraCandies int) []bool {

	//using a slice, no need to initialize with length
	result := []bool{}
	max := candies[0]

	// get max value in array
	// using _ instead of index because we only care about value here
	for _, value := range candies {
		if value > max {
			max = value
		}
	}

	for _, value := range candies {
		if value+extraCandies >= max {
			result = append(result, true)
		} else {
			result = append(result, false)
		}
	}

	return result
}

func main() {
	candies := []int{2, 3, 5, 1, 3}
	extraCandies := 3
	fmt.Println(kidsWithCandies(candies, extraCandies))
}
