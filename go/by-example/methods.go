package main

import "fmt"

type rect struct {
	width, height int
}

func (r *rect) area() int { // takes pointer to struct
	return r.width * r.height
}

func (r rect) perim() int { // copies value to new struct
	return 2*r.width + 2*r.height
}

func main() {
	r := rect{width: 10, height: 5}
	fmt.Println("area:", r.area())
	fmt.Println("perim:", r.perim())

	rp := &r
	fmt.Println("area:", rp.area())
	fmt.Println("perim:", rp.perim())
}
