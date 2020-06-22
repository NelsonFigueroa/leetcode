// https://leetcode.com/problems/number-of-1-bits/

package main

import (
	"fmt"
	"strconv"
	"strings"
)

func hammingWeight(num uint32) int {

	// FormatUint returns string representation of given uint to a specified base (2 in this case)
	// function only works with uint64 type, so need to cast uint32 -> uint64
	binary := strconv.FormatUint(uint64(num), 2)
	fmt.Println(binary)

	// convert binary to string
	str := fmt.Sprint(binary)
	fmt.Println(str)

	// split binary string into array
	bits := strings.Split(str, "")
	fmt.Println(bits)

	bitCounter := 0

	for index := range bits {
		if bits[index] == "1" {
			bitCounter++
		}
	}

	return bitCounter
}

func main() {
	fmt.Println(hammingWeight(00000000000000000000000000001011))
}
