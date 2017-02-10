package main

import "fmt"

type person struct {
	name string
	age  int
}

func main() {
	fmt.Println(person{"Bob", 20})              // assign by order
	fmt.Println(person{name: "Alice", age: 30}) // assign by name
	fmt.Println(person{name: "Fred"})           // don't have to initialize everything

	fmt.Println(&person{name: "Ann", age: 30})

	s := person{name: "Sean", age: 50}
	fmt.Println(s.name)

	sp := &s
	fmt.Println(sp.age)

	sp.age = 51
	fmt.Println(sp.age)

}
