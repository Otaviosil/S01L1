package main

import (
	"fmt"
	"math"
)

func main() {
	var a, b, c float64

	fmt.Println("Digite os coeficientes da equação do segundo grau (ax^2 + bx + c = 0):")
	fmt.Print("a: ")
	fmt.Scan(&a)
	fmt.Print("b: ")
	fmt.Scan(&b)
	fmt.Print("c: ")
	fmt.Scan(&c)

	delta := b*b - 4*a*c

	if delta < 0 {
		fmt.Println("A equação não possui raízes reais.")
	} else if delta == 0 {
		x := -b / (2 * a)
		fmt.Printf("A equação possui uma raiz real: x = %.2f\n", x)
	} else {
		x1 := (-b + math.Sqrt(delta)) / (2 * a)
		x2 := (-b - math.Sqrt(delta)) / (2 * a)
		fmt.Printf("A equação possui duas raízes reais: x1 = %.2f, x2 = %.2f\n", x1, x2)
	}
}