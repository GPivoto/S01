use std::io;

fn eh_par(numero: i32) -> bool {
    numero % 2 == 0
}

fn main() {
    let mut escolha = String::new();
    println!("Jogador 1, escolha 'par' ou 'ímpar': ");
    io::stdin().read_line(&mut escolha).expect("Erro");
    let escolha = escolha.trim().to_lowercase();

    let mut num1 = String::new();
    println!("Jogador 1, digite seu número: ");
    io::stdin().read_line(&mut num1).expect("Erro");
    let num1: i32 = num1.trim().parse().unwrap();

    let mut num2 = String::new();
    println!("Jogador 2, digite seu número: ");
    io::stdin().read_line(&mut num2).expect("Erro");
    let num2: i32 = num2.trim().parse().unwrap();

    let soma = num1 + num2;
    let par = eh_par(soma);

    println!("Soma = {}", soma);

    if (par && escolha == "par") || (!par && escolha == "ímpar") {
        println!("Jogador 1 venceu!");
    } else {
        println!("Jogador 2 venceu!");
    }
}
