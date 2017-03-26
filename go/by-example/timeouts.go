package main
import (
  "fmt"
  "time"
)

func main() {
  c1 := make(chan string, 1)

  go func() { // waits for 2 seconds before sending message
    time.Sleep(time.Second * 2)
    c1 <- "result 1"
  }()

  select { // look for result
  case res := <-c1:
    fmt.Println(res)
  case <-time.After(time.Second): // if no result in 1 second, timeout
    fmt.Println("timeout 1")
  }

  c2 := make(chan string, 1)

  go func() {
    time.Sleep(time.Second * 2)
    c2 <- "result 2"
  }()

  select {
  case res := <- c2:
    fmt.Println(res)
  case <-time.After(time.Second * 3):
    fmt.Println("timeout 2")
  }
}
