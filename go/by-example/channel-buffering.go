package main
import "fmt"

func main() {
  messages := make(chan string, 2) // holds 2 in FIFO pipe

  messages <- "buffered"
  messages <- "channel"

  fmt.Println(<- messages)
  fmt.Println(<- messages)
}
