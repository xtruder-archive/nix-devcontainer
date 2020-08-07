package main

import (
	"fmt"

	"github.com/logrusorgru/aurora"
)

func composeHello(who string, colorf func(interface{}) aurora.Value) string {
	return fmt.Sprintf("Hello,%s!", colorf(who))
}
