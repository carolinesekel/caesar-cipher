package main

import (
	"bufio"
	"os"
	"strings"
)

func main() {
	alphabet := "abcdefghijklmnopqrstuvwxyz"
	//shift by 5
	cipher := "fghijklmnopqrstuvwxyzabcde"

	reader := bufio.NewReader(os.Stdin)
	println("What would you like to encrypt?")
	inputString, _ := reader.ReadString('\n')

	var encrypted []string
	for i := 0; i < len(inputString); i++ {
		position := strings.Index(alphabet, string(inputString[i]))
		newChar := string(cipher[position])
		//println(newChar)
		encrypted = append(encrypted, newChar)
	}
	println(strings.Join(encrypted, ""))
}
