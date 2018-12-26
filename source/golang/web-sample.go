package main

import (
	"fmt"
	"net/http"
)

func handler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprint(w, "Go HTTP Service running like a charm.")
}

func main() {
	fmt.Print("Serving at http://0.0.0.0:8080")
	http.HandleFunc("/", handler)
	http.ListenAndServe(":8080", nil)
}
