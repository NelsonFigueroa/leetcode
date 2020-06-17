// https://leetcode.com/problems/convert-binary-number-in-a-linked-list-to-integer/

package main

import (
	"fmt"
	"strconv"
	"strings"
)

// Definition for singly-linked list.
type ListNode struct {
	Val  int
	Next *ListNode
}

func getDecimalValue(head *ListNode) int {
	var value []string

	for head != nil {
		value = append(value, strconv.Itoa(head.Val)) // convert to string when appending
		head = head.Next
	}

	// join values in array into a string representing binary number
	binary := strings.Join(value, "")

	// convert binary string from 2 bits to 64
	i, err := strconv.ParseInt(binary, 2, 64)
	if err != nil {
		fmt.Println(err)
	}

	// convert from int64 to int and return
	return int(i)
}

func main() {
	head := &ListNode{Val: 1}
	head.Next = &ListNode{Val: 0}
	head.Next.Next = &ListNode{Val: 1}
	fmt.Println(getDecimalValue(head))
}
