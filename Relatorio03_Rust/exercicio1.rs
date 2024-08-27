use std::io;

fn main() {
    println!("Digite dois números:");
    let mut input = String::new();
    io::stdin().read_line(&mut input).expect("Erro ao ler entrada.");

    let nums: Vec<i32> = input
        .trim()
        .split_whitespace()
        .map(|s| s.parse().unwrap())
        .collect();

    println!("Escolha a operação (m para multiplicar, s para somar):");
    let mut operation = String::new();
    io::stdin().read_line(&mut operation).expect("Erro ao ler entrada.");

    match operation.trim() {
        "m" => println!("Resultado: {}", nums[0] * nums[1]),
        "s" => println!("Resultado: {}", nums[0] + nums[1]),
        _ => println!("Operação inválida."),
    }
}
