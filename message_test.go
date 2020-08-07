package main

import (
	"fmt"
	"testing"

	"github.com/logrusorgru/aurora"
)

func TestComposeHello(t *testing.T) {
	msg := composeHello("Nix", aurora.Magenta)
	expected := fmt.Sprintf("Hello,%s!", aurora.Magenta("Nix"))

	if msg != expected {
		t.Fatalf("%s != %s", expected, msg)
	}
}
