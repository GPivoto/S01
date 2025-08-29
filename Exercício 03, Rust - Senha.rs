use std::io;

fn verificar_senha(senha: &str) -> bool {
    if senha.len() < 8 {
        return false;
    }

    let mut tem_numero = false;
    let mut tem_maiuscula = false;

    for c in senha.chars() {
        if c.is_ascii_digit() {
            tem_numero = true;
        }
        if c.is_ascii_uppercase() {
            tem_maiuscula = true;
        }
    }

    tem_numero && tem_maiuscula
}

fn main() {
    loop {
        let mut senha = String::new();
        println!("Digite sua senha: ");
        io::stdin().read_line(&mut senha).expect("Erro ao ler");
        let senha = senha.trim();

        if verificar_senha(senha) {
            println!("Senha válida! Acesso concedido.");
            break;
        } else {
            println!("Senha inválida, tente novamente.");
        }
    }
}
