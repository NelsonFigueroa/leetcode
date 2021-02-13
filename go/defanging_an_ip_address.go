// https://leetcode.com/problems/defanging-an-ip-address/

package main

import (
	"fmt"
	"strings"
)

func defangIPaddr(address string) string {
	// split by dot, then join by [.]
	return strings.Join(strings.Split(address, "."), "[.]")
}

func main() {
	fmt.Println(defangIPaddr("192.168.1.1"))
}
