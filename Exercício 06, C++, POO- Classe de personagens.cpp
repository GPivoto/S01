#include <iostream>
#include <string>
using namespace std;

class BaseItem {
private:
    string titulo;
    int duracao;

public:
    void definirTitulo(const string &t) {
        titulo = t;
    }

    void definirDuracao(int d) {
        duracao = d;
    }

    string obterTitulo() const {
        return titulo;
    }

    int obterDuracao() const {
        return duracao;
    }
};


class ItemPrincipal : public BaseItem {
private:
    int pontuacao;

public:
    void definirPontuacao(int p) {
        pontuacao = p;
    }

    int obterPontuacao() const {
        return pontuacao;
    }
};

class ItemSecundario : public BaseItem {
private:
    int grau; 

public:
    void definirGrau(int g) {
      
        if (g < 0) g = 0;
        if (g > 10) g = 10;
        grau = g;
    }

    int obterGrau() const {
        return grau;
    }
};

int main() {
    ItemPrincipal foco;
    foco.definirTitulo("Espada Lendária");
    foco.definirDuracao(1700);
    foco.definirPontuacao(500);

    ItemSecundario suporte;
    suporte.definirTitulo("Escudo Menor");
    suporte.definirDuracao(1700);
    suporte.definirGrau(3);

    cout << "=== Propriedades do Item Principal ===" << endl;
    cout << "Titulo: " << foco.obterTitulo() << endl;
    cout << "Duracao: " << foco.obterDuracao() << " segundos" << endl;
    cout << "Pontuacao: " << foco.obterPontuacao() << endl;

    cout << "\n=== Propriedades do Item Secundario ===" << endl;
    cout << "Titulo: " << suporte.obterTitulo() << endl;
    cout << "Duracao: " << suporte.obterDuracao() << " segundos" << endl;
    cout << "Grau de Rareza: " << suporte.obterGrau() << endl;

    return 0;
}
