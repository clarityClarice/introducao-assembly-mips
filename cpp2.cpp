#include "stdafx.h"
#include <string>
#include "iostream"

using namespace std;


int Vector_A[8];
int Vector_B[8];
int Vector_C[8];


int main()
{	
	int tam = 0;	//inicialização da variável com o tamanho do array

	for (int i = 0; i < 8; i++) {	//inicializando os vetores com todas as posições em 0
		Vector_A[i] = 0;
		Vector_B[i] = 0;
		Vector_C[i] = 0;
	}

	
	while (tam < 1 || tam > 8) {			
		cout << "Digite o tamanho do array (1-8)" << endl;
		cin >> tam;
		cout << endl;
		if (tam < 1 || tam > 8) {
			cout << "Valor inválido" << endl;
		}
	}

	for (int i = 0; i < tam; i++) {
		cout << "Vector_A[" << i << "] = ";
		cin >> Vector_A[i];
		cout << endl;
	}
	for (int i = 0; i < tam; i++) {
		cout << "Vector_B[" << i << "] = ";
		cin >> Vector_B[i];
		cout << endl;
	}

	for (int i = 0; i < tam; i++) {
		Vector_C[i] = Vector_A[i] + Vector_B[i];
	}
	cout << endl;
	cout << "Resultados:" << endl;
	for (int i = 0; i < tam; i++) {
		cout << "Vector_C[" << i << "] = ";
		cout << Vector_C[i] << endl;
	}


	while (true) {

	}
    return 0;
}

