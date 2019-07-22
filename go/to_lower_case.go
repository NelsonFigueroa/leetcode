package main

import "fmt"
import "strings"

func main() {
	fmt.Println(toLowerCase("Hello"))
}

// solution below
func toLowerCase(str string) string {
	return strings.ToLower(str)
}
