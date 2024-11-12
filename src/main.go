package main

import (
	"fmt"
	"net/http"
)

func handler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "RELEASE 2")

}

func main() {
	http.HandleFunc("/", handler)
	fmt.Println("Listening on port 8080...")
	http.ListenAndServe(":8080", nil)
}
