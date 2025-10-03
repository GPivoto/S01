#include <iostream>
#include <string>
using namespace std;

class Lutador {
public:
    string titulo;
    int grau;
    int forca;
    int saude;

    void golpear(Lutador &oponente) {
        cout << titulo << " golpeou " << oponente.titulo << " e causou " << forca << " de dano!" << endl;
        oponente.saude -= forca;
        if (oponente.saude < 0) oponente.saude = 0;
    }
};

int main() {
    Lutador l1;
    l1.titulo = "Bárbaro";
    l1.grau = 5;
    l1.forca = 20;
    l1.saude = 100;

    Lutador l2;
    l2.titulo = "Arcanista";
    l2.grau = 4;
    l2.forca = 15;
    l2.saude = 80;

    cout << "=== Situacao Inicial ===" << endl;
    cout << l1.titulo << " - Saude: " << l1.saude << " | Grau: " << l1.grau << endl;
    cout << l2.titulo << " - Saude: " << l2.saude << " | Grau: " << l2.grau << endl;
    cout << endl;

    l1.golpear(l2);

    cout << "\n=== Pos Batalha ===" << endl;
    cout << l1.titulo << " - Saude: " << l1.saude << " | Grau: " << l1.grau << endl;
    cout << l2.titulo << " - Saude: " << l2.saude << " | Grau: " << l2.grau << endl;

    return 0;
}
