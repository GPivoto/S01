class EntidadeJogo:
    def __init__(self, energia: int, defesa: int):
        self._energia = energia
        self._defesa = defesa

    @property
    def energia(self):
        return self._energia

    @energia.setter
    def energia(self, novo_valor_energia):
        if novo_valor_energia >= 0:
            self._energia = novo_valor_energia
        else:
            print("A vida não pode ser negativa.")

    def __str__(self):
        return f"Personagem com {self._energia} de vida e {self._defesa} de resistência"


class Guerreiro(EntidadeJogo):
    def __init__(self, energia: int, defesa: int, cota_de_malha: bool):
        super().__init__(energia, defesa)
        self.cota_de_malha = cota_de_malha

    def __str__(self):
        tipo_protecao = "com armadura pesada" if self.cota_de_malha else "sem armadura pesada"
        return f"Cavaleiro {tipo_protecao}, {self._energia} de vida e {self._defesa} de resistência"

if __name__ == "__main__":
    objeto_base = EntidadeJogo(100, 50)
    print(objeto_base)

    objeto_derivado = Guerreiro(120, 80, True)
    print(objeto_derivado)
