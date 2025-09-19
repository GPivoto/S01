#include <iostream>
using namespace std;

float calcularSoma(float vetor[], int qtdElementos) {
    float acumulado = 0;
    for (int i = 0; i < qtdElementos; i++) {
        acumulado += vetor[i];
    }
    return acumulado;
}

int main() {
    int quantidade;

    cout << "Informe quantos elementos o vetor tera: ";
    cin >> quantidade;

    float vetor[quantidade];

    cout << "Digite os " << quantidade << " numeros (tipo float):" << endl;
    for (int i = 0; i < quantidade; i++) {
        cin >> vetor[i];
    }

    float somaFinal = calcularSoma(vetor, quantidade);

    cout << "A soma total dos valores eh: " << somaFinal << endl;

    return 0;
}
