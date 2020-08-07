package main

import (
	"fmt"

	"github.com/logrusorgru/aurora"
)

func main() {
	msg := composeHello("Nix!", aurora.Magenta)
	fmt.Println(msg)
}
