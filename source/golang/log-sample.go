package main

import (
	"log"
	"os"
)

func main() {
	l := log.New(os.Stdout, "", log.Ldate|log.Lmicroseconds|log.Lshortfile)
	l.Println("hello log from Go. ")
}
