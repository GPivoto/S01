class IExplorador {
  explorarTerritorio() {
    throw new Error("Método 'explorarTerritorio()' deve ser implementado.");
  }
}

class ODM_Gear {
  #gasRestante;

  constructor(modelo) {
    this.modelo = modelo;
    this.#gasRestante = 100; 
  }

  usarGas(quantidade) {
    this.#gasRestante -= quantidade;
    if (this.#gasRestante < 0) this.#gasRestante = 0;
    console.log(`ODMGear (${this.modelo}) usou ${quantidade} de gás. Restante: ${this.#gasRestante}`);
  }

  getGas() {
    return this.#gasRestante;
  }
}

class Soldado extends IExplorador {
  #gear;

  constructor(nome, modeloGear) {
    super();
    this.nome = nome;
    this.#gear = new ODM_Gear(modeloGear);
  }

  explorarTerritorio() {
    this.#gear.usarGas(20);
    return `${this.nome} está explorando o território com o gear ${this.#gear.modelo}. Gás restante: ${this.#gear.getGas()}`;
  }

  verificarEquipamento() {
    return `Equipamento de ${this.nome}: ${this.#gear.modelo} (Gás: ${this.#gear.getGas()})`;
  }
}

class Esquadrao extends IExplorador {
  constructor(lider, membrosIniciais = []) {
    super();
    this.lider = lider;
    this.membros = membrosIniciais;
  }

  adicionarMembro(soldado) {
    this.membros.push(soldado);
    console.log(`${soldado.nome} foi adicionado ao esquadrão.`);
  }

  explorarTerritorio() {
    console.log(`Esquadrão liderado por ${this.lider} iniciou a exploração!`);
    return this.membros.map(s => s.explorarTerritorio());
  }

  relatarStatus() {
    return this.membros.map(s => s.verificarEquipamento());
  }
}

const soldado1 = new Soldado("Mikasa", "Gear-X");
const soldado2 = new Soldado("Armin", "Gear-Y");
const esquadrao = new Esquadrao("Levi", [soldado1, soldado2]);

console.log("=== EXPLORAÇÃO ===");
console.log(esquadrao.explorarTerritorio());

console.log("\n=== STATUS ===");
console.log(esquadrao.relatarStatus());
