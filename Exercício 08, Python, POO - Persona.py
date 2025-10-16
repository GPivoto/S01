class ArmaCorpoACorpo:
    def __init__(self, nome: str):
        self.nome = nome

    def __str__(self):
        return f"Arma corpo a corpo: {self.nome}"

class PhantomThieves:
    def __init__(self, nome: str, arma: ArmaCorpoACorpo):
        self.nome = nome
        self.arma = arma

    def __str__(self):
        return f"{self.nome} empunha {self.arma.nome}"

class Joker:
    def __init__(self, nome: str, membros: list[PhantomThieves]):
        self.nome = nome
        self.arma = ArmaCorpoACorpo("Faca")
        self.membros = membros

    def mostrar_equipe(self):
        print(f"Equipe de {self.nome} ({self.arma.nome}):")
        for membro in self.membros:
            print(f" - {membro}")

if __name__ == "__main__":
    arma1 = ArmaCorpoACorpo("Catana")
    arma2 = ArmaCorpoACorpo("Chicote")
    arma3 = ArmaCorpoACorpo("Adaga")

    membro1 = PhantomThieves("Ryuji", arma1)
    membro2 = PhantomThieves("Ann", arma2)
    membro3 = PhantomThieves("Yusuke", arma3)

    equipe = [membro1, membro2, membro3]
    joker = Joker("Joker", equipe)

    joker.mostrar_equipe()
