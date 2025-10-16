from abc import ABC, abstractmethod

class Cibernetico(ABC):
    @abstractmethod
    def realizar_hack(self):
        pass

class Implante:
    def __init__(self, custo: float, funcao: str):
        self.custo = custo
        self.funcao = funcao

    def __str__(self):
        return f"Implante ({self.funcao}, custo: {self.custo} créditos)"

class NetRunner(Cibernetico):
    def __init__(self, nome: str, custo_implante: float, funcao_implante: str):
        self.nome = nome
        self.implante = Implante(custo_implante, funcao_implante)

    def realizar_hack(self):
        print(f"{self.nome} está realizando um hack usando o {self.implante.funcao}!")

class Faccao:
    def __init__(self, nome: str, membros: list[Cibernetico]):
        self.nome = nome
        self.membros = membros  

    def comandar_hack(self):
        print(f"\nFacção {self.nome} iniciando operação de hack coletivo:")
        for membro in self.membros:
            membro.realizar_hack()

if __name__ == "__main__":
    n1 = NetRunner("V", 5000, "Neural Link")
    n2 = NetRunner("Lucy", 7500, "Cyberdeck Avançado")
    n3 = NetRunner("David", 6000, "Implante Sandevistan")

    equipe = [n1, n2, n3]
    faccao = Faccao("Edgerunners", equipe)

    faccao.comandar_hack()
