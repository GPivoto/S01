class Criatura {
  constructor(nome, perigosa) {
    this.nome = nome;
    this.perigosa = perigosa;
  }
}

class Diario {
  #autorSecreto;
  #enigmas;
  #criaturasAvistadas;

  constructor(autor) {
    this.#autorSecreto = autor;
    this.#enigmas = new Map();
    this.#criaturasAvistadas = [];
  }

  getAutor() {
    return this.#autorSecreto;
  }

  adicionarEnigma(num, enigma) {
    this.#enigmas.set(num, enigma);
  }

  decodificar(chave, num) {
    if (chave === this.#autorSecreto && this.#enigmas.has(num)) {
      return this.#enigmas.get(num);
    } else {
      return "Acesso negado";
    }
  }
}

class Protagonista extends Diario {
  constructor(nome, idade) {
    super(nome);
    this.nome = nome;
    this.idade = idade;
    this.diario = new Diario(nome);
  }
}

class Personagem {
  constructor(nome, idade) {
    this.nome = nome;
    this.idade = idade;
  }
}

class CabanaMisterio {
  constructor(diario) {
    this.diario = diario;
    this.visitantes = [];
    this.funcionarios = [];
  }

  listarFuncionarios() {
    return this.funcionarios;
  }
}
