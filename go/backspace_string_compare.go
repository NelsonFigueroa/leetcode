// https://leetcode.com/problems/backspace-string-compare/

package main

import (
	"fmt"
	"regexp"
	"strings"
)

func backspaceCompare(S string, T string) bool {
	var stringsAreEqual bool

	// get the count of hashes to determine how many deletes to do
	sHashCount := strings.Count(S, "#")
	tHashCount := strings.Count(T, "#")

	// regex for letter followed by hash
	reg := regexp.MustCompile("[a-z]#")

	// replace regex instances with nothing for each string
	for i := 0; i < sHashCount; i++ {
		S = reg.ReplaceAllString(S, "")
	}

	for i := 0; i < tHashCount; i++ {
		T = reg.ReplaceAllString(T, "")
	}

	// replace any hashes that might be in beginning of string
	S = strings.ReplaceAll(S, "#", "")
	T = strings.ReplaceAll(T, "#", "")

	// Compare() returns 0 if the strings are the same
	if strings.Compare(S, T) == 0 {
		stringsAreEqual = true
	}

	return stringsAreEqual
}

func main() {
	fmt.Println(backspaceCompare("ab#c", "ad#c"))
}
