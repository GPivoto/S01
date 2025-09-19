#include <iostream>
using namespace std;

double converterParaFahrenheit(double tempC) {
    return (tempC * 9 / 5) + 32;
}

double converterParaKelvin(double tempC) {
    return tempC + 273.15;
}

int main() {
    int escolha;
    double valorCelsius;

    do {
        cout << "\n===== CONVERSOR DE TEMPERATURA =====" << endl;
        cout << "1. Celsius -> Fahrenheit" << endl;
        cout << "2. Celsius -> Kelvin" << endl;
        cout << "3. Encerrar programa" << endl;
        cout << "Digite sua escolha: ";
        cin >> escolha;

        switch (escolha) {
            case 1:
                cout << "Informe a temperatura em Celsius: ";
                cin >> valorCelsius;
                cout << "Resultado em Fahrenheit: "
                     << converterParaFahrenheit(valorCelsius) << endl;
                break;

            case 2:
                cout << "Informe a temperatura em Celsius: ";
                cin >> valorCelsius;
                cout << "Resultado em Kelvin: "
                     << converterParaKelvin(valorCelsius) << endl;
                break;

            case 3:
                cout << "Finalizando o programa..." << endl;
                break;

            default:
                cout << "Opcao invalida! Escolha novamente." << endl;
        }

    } while (escolha != 3);

    return 0;
}
