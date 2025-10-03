#include <iostream>
#include <string>
using namespace std;

class Entidade {
public:
    string identificador;

    Entidade(const string& id) : identificador(id) {}
    
    virtual ~Entidade() {} 

    virtual void descrever() {
        cout << "Sou uma entidade basica com o ID: " << identificador << "." << endl;
    }
};

class Maquina : public Entidade {
public:

    Maquina(const string& id) : Entidade(id) {}
    
    void descrever() { 
        cout << "Sou a maquina de modelo " << identificador << "." << endl;
    }
};

class Veiculo : public Entidade {
public:
    /
    Veiculo(const string& id) : Entidade(id) {}
    
    void descrever() {
        cout << "Sou o veiculo " << identificador << "." << endl;
    }
};

class Objeto : public Entidade {
public:

    Objeto(const string& id) : Entidade(id) {}
    
    void descrever() {
        cout << "Sou o objeto " << identificador << "." << endl;
    }
};

int main() {
    Entidade* elementos[3];

    elementos[0] = new Maquina("Colheitadeira-X");
    elementos[1] = new Veiculo("Nave-Espacial-Alfa");
    elementos[2] = new Objeto("Artefato-Antigo");
  
    cout << "--- Apresentacao dos Elementos ---\n";
    for (int i = 0; i < 3; i++) {
        elementos[i]->descrever();
    }
    cout << "-----------------------------------\n";
  
    for (int i = 0; i < 3; i++) {
        delete elementos[i];
    }

    return 0;
}
