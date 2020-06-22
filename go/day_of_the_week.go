// https://leetcode.com/problems/day-of-the-week/

package main

import (
	"fmt"
	"time"
)

func dayOfTheWeek(day int, month int, year int) string {

	date := time.Date(year, time.Month(month), day, 0, 0, 0, 0, time.UTC)
	result := date.Weekday().String()

	return result
}

func main() {
	fmt.Println(dayOfTheWeek(31, 10, 2019))
}
