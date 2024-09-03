package main

import (
	"fmt"
	"math/rand"
	"time"
)

func factorial(n int) int {
	if n == 0 {
		return 1
	}
	return n * factorial(n-1)
}

func main() {
	source := rand.NewSource(time.Now().UnixNano())
	rng := rand.New(source)

	randomNumber := rng.Intn(10)
	fact := factorial(randomNumber)

	fmt.Printf("Número aleatório: %d\n", randomNumber)
	fmt.Printf("Fatorial de %d: %d\n", randomNumber, fact)
}