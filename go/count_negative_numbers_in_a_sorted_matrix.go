// https://leetcode.com/problems/count-negative-numbers-in-a-sorted-matrix/

package main

import "fmt"

func countNegatives(grid [][]int) int {
	count := 0

	for x_index := range grid {
		for y_index := range grid[x_index] {
			if grid[x_index][y_index] < 0 {
				count++
			}
		}
	}

	return count
}

func main() {
	var grid [][]int
	// initializing 2D array
	grid = [][]int{{4, 3, 2, -1}, {3, 2, 1, -1}, {1, 1, -1, -2}, {-1, -1, -2, -3}}
	fmt.Println(countNegatives(grid))
}
