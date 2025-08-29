use std::io;

fn imprimir_tabuada(numero: i32, limite_inferior: i32, limite_superior: i32) {
    for i in limite_inferior..=limite_superior {
        println!("{} x {} = {}", numero, i, numero * i);
    }
}

fn main() {
    let mut num = String::new();
    println!("Digite o número da tabuada: ");
    io::stdin().read_line(&mut num).unwrap();
    let num: i32 = num.trim().parse().unwrap();

    let mut inf = String::new();
    println!("Digite o limite inferior: ");
    io::stdin().read_line(&mut inf).unwrap();
    let inf: i32 = inf.trim().parse().unwrap();

    let mut sup = String::new();
    println!("Digite o limite superior: ");
    io::stdin().read_line(&mut sup).unwrap();
    let sup: i32 = sup.trim().parse().unwrap();

    imprimir_tabuada(num, inf, sup);
}
