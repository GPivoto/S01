#include <iostream>
using namespace std;

int main() {
    int totalNotas;
    float valorNota, acumulador = 0;

    cout << "Informe a quantidade de notas que deseja registrar: ";
    cin >> totalNotas;

    for (int indice = 1; indice <= totalNotas; indice++) {
        cout << "Insira a nota " << indice << ": ";
        cin >> valorNota;

        while (valorNota < 0 || valorNota > 10) {
            cout << "Valor invalido! Informe uma nota entre 0 e 10: ";
            cin >> valorNota;
        }

        acumulador += valorNota;
    }

    float resultadoMedia = acumulador / totalNotas;

    cout << "A media calculada foi: " << resultadoMedia << endl;

    if (resultadoMedia >= 7)
        cout << "Situacao: Aprovado" << endl;
    else
        cout << "Situacao: Reprovado" << endl;

    return 0;
}
