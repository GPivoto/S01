class IRastreavel {
  rastrearLocal(lat, long) {
    throw new Error("Método deve ser implementado.");
  }
}

class Hunter extends IRastreavel {
  constructor(nome, local, idade) {
    super();
    this.nome = nome;
    this.localizacao = local;
    this.idade = idade;
  }
}

class Especialista extends Hunter {
  #habilidadeNen;
  constructor(nome, habilidade) {
    super(nome, "Desconhecido", 0);
    this.#habilidadeNen = habilidade;
  }

  rastrearLocal(lat, long) {
    this.localizacao = `${lat}, ${long}`;
    return `${this.nome} usou a habilidade ${this.#habilidadeNen} e rastreou a localização: ${this.localizacao}`;
  }
}

class Manipulador extends Hunter {
  #alvoAtual;
  constructor(nome) {
    super(nome, "Desconhecido", 0);
    this.#alvoAtual = null;
  }

  rastrearLocal(lat, long) {
    this.localizacao = `${lat}, ${long}`;
    return `${this.nome} manipulou seu alvo e rastreou a localização: ${this.localizacao}`;
  }
}

class Batalhao {
  #hunters;
  constructor() {
    this.#hunters = new Set();
  }

  adicionarHunter(hunter) {
    if (![...this.#hunters].some(h => h.nome === hunter.nome)) {
      this.#hunters.add(hunter);
    }
  }

  getNumHunters() {
    return this.#hunters.size;
  }

  iniciarRastreamento(lat, long) {
    const resultados = [];
    for (const h of this.#hunters) {
      resultados.push(h.rastrearLocal(lat, long));
    }
    return resultados;
  }
}
