#include <iostream>
using namespace std;

int calcularFibo(int termo) {
    if (termo == 0)
        return 0;
    if (termo == 1)
        return 1;
    return calcularFibo(termo - 1) + calcularFibo(termo - 2);
}

int main() {
    int numero;
    cout << "Informe um valor inteiro: ";
    cin >> numero;

    cout << "O termo " << numero << " da sequencia de Fibonacci eh: "
         << calcularFibo(numero) << endl;

    return 0;
}
