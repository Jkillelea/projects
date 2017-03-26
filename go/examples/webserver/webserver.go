package main

import (
	"io"
	"net/http"
)

func hello(w http.ResponseWriter, r *http.Request) {
	io.WriteString(w, "Hello world!")
}

var mux = make(map[string]func(http.ResponseWriter, *http.Request)) // key = string, val = func(http.ResponseWriter, *http.Request)

func main() {
	server := http.Server{
		Addr:    ":8000",
		Handler: &myHandler{},
	}

	mux["/"] = hello // map request to function

	server.ListenAndServe()
}

type myHandler struct{}

func (*myHandler) ServeHTTP(w http.ResponseWriter, r *http.Request) {
	h, ok := mux[r.URL.String()] // figure out which function based on URL
	if ok {
		h(w, r)
		return
	}
	io.WriteString(w, "My server: " + r.URL.String())
}
