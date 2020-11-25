// https://leetcode.com/problems/palindrome-number/

package main

import (
	"fmt"
	"strconv"
	"strings"
)

func isPalindrome(x int) bool {
	if x < 0 {
		return false
	}

	// convert to string
	str := strconv.Itoa(x)

	// split into array
	arr := strings.Split(str, "")

	// reverse array elements
	for i := 0; i < len(arr)/2; i++ {
		j := len(arr) - i - 1
		arr[i], arr[j] = arr[j], arr[i]
	}

	// join array back to string
	str = strings.Join(arr, "")

	// convert string back to int
	num, _ := strconv.Atoi(str)

	if num != x {
		return false
	}

	return true
}

func main() {
	fmt.Println(isPalindrome(1213))
}
