package main

import "fmt"

func main() {

	i := 1
	for i <= 3 { // the simplest
		fmt.Println(i)
		i++
	}

	for j := 7; j <= 9; j++ { // the most common
		fmt.Println(j)
	}

	for {
		fmt.Println("loop")
		break
	}

	for n := 0; n <= 5; n++ {
		if n%2 == 0 {
			continue
		}
		fmt.Println(n)
	}
}
