package main

import (
  "fmt"
)

// Variable declaration outside of function (can omit type. otherwise, it's 'var s string = "potato"')
var s = "potato"

func main() {

  for index := 0; index < 100; index++ {
    fmt.Println(s)
    r := test(2) // Variable declaration inside function, type inferred from return
    fmt.Println(r)
    fmt.Println()
  }
}

func test(i int) int {
  return i
}
