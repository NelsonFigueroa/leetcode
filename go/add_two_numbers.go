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
	for i, j := 0, len(num1)-1; i < j; i, j = i+1, j-1 {
		num1[i], num1[j] = num1[j], num1[i]
	}
	for i, j := 0, len(num2)-1; i < j; i, j = i+1, j-1 {
		num2[i], num2[j] = num2[j], num2[i]
	}

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
	for i, j := 0, len(resultSlice)-1; i < j; i, j = i+1, j-1 {
		resultSlice[i], resultSlice[j] = resultSlice[j], resultSlice[i]
	}

	// create linked list out of result slice and return
	head := &ListNode{Val: 0, Next: nil}
	pointer := head // pointer for iterations

	for i := 0; i < len(resultSlice); i++ {
		fmt.Println(i)
		pointer.Val, _ = strconv.Atoi(resultSlice[i])
		fmt.Println("Value: ", pointer.Val)

		if i+1 == len(resultSlice) {
			break
		}

		pointer.Next = new(ListNode)
		pointer = pointer.Next
	}

	return head
}

func main() {
		// fmt.Println(addTwoNumbers(l1, l2))
}
