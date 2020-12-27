// https://leetcode.com/problems/add-two-numbers/

package main

import (
	"fmt"
	"math/big"
	"strconv"
	"strings"
)

type ListNode struct {
	Val  int
	Next *ListNode
}

func reverseSlice(s []string) []string {
	for i, j := 0, len(s)-1; i < j; i, j = i+1, j-1 {
		s[i], s[j] = s[j], s[i]
	}

	return s
}

func addTwoNumbers(l1 *ListNode, l2 *ListNode) *ListNode {
	// slices to store digits
	num1 := []string{}
	num2 := []string{}

	// iterate through each list, append to digit slices
	for l1 != nil {
		num1 = append(num1, strconv.Itoa(l1.Val))
		l1 = l1.Next
	}
	for l2 != nil {
		num2 = append(num2, strconv.Itoa(l2.Val))
		l2 = l2.Next
	}

	// reverse each slice and join into string
	num1 = reverseSlice(num1)
	num2 = reverseSlice(num2)

	// join each slice
	num1Joined := strings.Join(num1, "")
	num2Joined := strings.Join(num2, "")

	// convert to integer
	num1Int := new(big.Int)
	num2Int := new(big.Int)
	num1Int, _ = num1Int.SetString(num1Joined, 10)
	num2Int, _ = num2Int.SetString(num2Joined, 10)

	// add
	resultInt := new(big.Int)
	resultInt.Add(num1Int, num2Int)

	// convert result to string
	resultStr := resultInt.String()

	// split result string to slice
	resultSlice := strings.Split(resultStr, "")

	// reverse slice
	resultSlice = reverseSlice(resultSlice)

	// create linked list out of result slice and return
	head := &ListNode{Val: 0, Next: nil}
	pointer := head // pointer for iterations

	for i := 0; i < len(resultSlice); i++ {
		pointer.Val, _ = strconv.Atoi(resultSlice[i])

		if i+1 == len(resultSlice) {
			break
		}

		pointer.Next = new(ListNode)
		pointer = pointer.Next
	}

	return head
}

func main() {
	l1 := &ListNode{Val: 2, Next: &ListNode{Val: 4, Next: &ListNode{Val: 3, Next: nil}}}
	l2 := &ListNode{Val: 5, Next: &ListNode{Val: 6, Next: &ListNode{Val: 4, Next: nil}}}
	head := addTwoNumbers(l1, l2)
	fmt.Println(head.Val)
}
