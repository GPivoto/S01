class Pokemon {
  #vida; 

  constructor(nome, tipo, vidaInicial) {
    this.nome = nome;
    this.tipo = tipo;
    this.#vida = vidaInicial;
  }

  getVida() {
    return this.#vida;
  }

  receberDano(dano) {
    this.#vida -= dano;
    if (this.#vida < 0) this.#vida = 0;
    console.log(`${this.nome} recebeu ${dano} de dano. Vida restante: ${this.#vida}`);
  }

  atacar(alvo) {
    console.log(`${this.nome} realiza um ataque genérico contra ${alvo.nome}.`);
    alvo.receberDano(10); 
  }
}

class PokemonFogo extends Pokemon {
  constructor(nome, vidaInicial, bonus) {
    super(nome, "Fogo", vidaInicial);
    this.bonusAtaque = bonus;
  }

  atacar(alvo) {
    const dano = 15 + this.bonusAtaque;
    console.log(`${this.nome} lança uma bola de fogo em ${alvo.nome}!`);
    alvo.receberDano(dano);
  }
}

class PokemonAgua extends Pokemon {
  #curaBase;

  constructor(nome, vidaInicial, curaBase) {
    super(nome, "Água", vidaInicial);
    this.#curaBase = curaBase;
  }

  atacar(alvo) {
    console.log(`${this.nome} lança um jato d’água em ${alvo.nome}!`);
    alvo.receberDano(12);
    console.log(`${this.nome} se cura em ${this.#curaBase} pontos.`);
    const vidaAtual = this.getVida() + this.#curaBase;
    Object.getPrototypeOf(this).constructor.prototype.receberDano.call(this, -this.#curaBase);
  }
}

const charmander = new PokemonFogo("Charmander", 100, 5);
const squirtle = new PokemonAgua("Squirtle", 100, 8);

console.log("=== Início da Batalha ===");
charmander.atacar(squirtle);
squirtle.atacar(charmander);
console.log("=== Fim da Batalha ===");
