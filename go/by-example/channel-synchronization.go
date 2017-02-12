package main

import (
  "fmt"
  "time"
)

func worker(done chan bool) {
  fmt.Println("Working...")
  time.Sleep(time.Second)
  fmt.Println("done")
  done <- true
}

func main()  {
  done := make(chan bool)
  go worker(done)

  isDone := <- done

  fmt.Println(isDone)
}
