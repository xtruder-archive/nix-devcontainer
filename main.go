package main

import (
	"fmt"

	aurora "github.com/logrusorgru/aurora"
)

func main() {
	fmt.Println("Hello,", aurora.Magenta("Nix!"))
}
