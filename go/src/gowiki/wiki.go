package main

import (
  "fmt"
  "io/ioutil"
)

// Go version of a class?
type Page struct {
  Title string
  Body []byte // technically a slice, not an array
}

// "This is a method named save that takes as its receiver p, a pointer to Page . It takes no parameters, and returns a value of type error."
// Basically the same as extending class Page with a function this.save()
func (p *Page) save() error {
  filename := p.Title + ".txt"
  return ioutil.WriteFile(filename, p.Body, 0600)
}
