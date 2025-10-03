#include <iostream>
#include <string>
using namespace std;


class SerVivo {
protected:
    string identificacao;

public:
    void definirID(const string &id) {
        identificacao = id;
    }

    virtual void exibirDetalhes() {
        cout << "Saudacoes, meu ID e " << identificacao << " e sou um ser generico." << endl;
    }
};


class Instrutor : public SerVivo {
private:
    string areaConhecimento;

public:
    void definirArea(const string &area) {
        areaConhecimento = area;
    }

    void exibirDetalhes() {  
        cout << "Saudacoes, meu ID e " << identificacao
              << " e eu sou um instrutor da area de " << areaConhecimento << "." << endl;
    }
};


class Discente : public SerVivo {
private:
    string especializacao;

public:
    void definirEspec(const string &esp) {
        especializacao = esp;
    }

    void exibirDetalhes() {  
        cout << "Saudacoes, meu ID e " << identificacao
              << " e eu sou um discente da especializacao em " << especializacao << "." << endl;
    }
};

int main() {
    Instrutor inst;
    inst.definirID("Ricardo");
    inst.definirArea("Sistemas Distribuídos");

    Discente disc;
    disc.definirID("Luiza");
    disc.definirEspec("Ciência de Dados");

    
    SerVivo *s1 = &inst;
    SerVivo *s2 = &disc;

    cout << "=== Demonstracao de Polimorfismo ===" << endl;
    s1->exibirDetalhes();  
    s2->exibirDetalhes();  

    return 0;
}
