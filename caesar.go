package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

func main() {
	alphabet := "abcdefghijklmnopqrstuvwxyz"
	//shift by 5
	cipher := "fghijklmnopqrstuvwxyzabcde"

	reader := bufio.NewReader(os.Stdin)
	print("What would you like to encrypt? ")
	inputString, _ := reader.ReadString(' ') //inputstring will include the deliniator
	inputString = inputString[0:(len(inputString) - 1)]
	s := fmt.Sprintf("Now encrypting %s...", inputString)
	println(s)

	var encrypted []string
	for i := 0; i < len(inputString); i++ {
		position := strings.Index(alphabet, string(inputString[i]))
		//println(position)
		newChar := string(cipher[position])
		//println(newChar)
		encrypted = append(encrypted, newChar)
	}
	println("Encrypted string: ", strings.Join(encrypted, ""))
}
