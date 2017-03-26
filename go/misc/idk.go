package main
import "fmt"

func read(str_ch chan<- string) {
  var line, last string
  for{
    fmt.Scanln(&line)
    if line != last {
      str_ch<- line // blocks until main reads
    }
    line = last
  }
}


func main() {
  str_ch := make(chan string)
  go read(str_ch) // async
  for {
    fmt.Println(<-str_ch)
  }
}
