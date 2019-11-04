// Go 1.13.4
// https://leetcode.com/problems/jewels-and-stones/

package main

import (
  "fmt"
  "strings"
)

func numJewelsInStones(J string, S string) int {

  jewel_count := 0

  // split strings into array of chars
  jewels := strings.Split(J, "")
  stones := strings.Split(S, "")

  // loop through each stone
  for s_index := range stones {
    // check if stone exists in jewels array
    for j_index := range jewels {
      if stones[s_index] == jewels[j_index] {
        jewel_count++
      }
    }
  }

  return jewel_count
}

func main() {
  fmt.Println(numJewelsInStones("aA", "aAAbbbb"))
}
