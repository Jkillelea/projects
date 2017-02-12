package main
import "fmt"

func ping(pings chan<- string, msg string) { // pings is a write-only channel
  pings <- msg
}

func pong(pings <-chan string, pongs chan<- string) { // here pings is read-only and pongs is write-only
  msg := <-pings
  pongs<- msg
}


func main() {
  pings := make(chan string, 1)
  pongs := make(chan string, 1)

  ping(pings, "passed message")
  pong(pings, pongs)

  fmt.Println(<-pongs)
}
