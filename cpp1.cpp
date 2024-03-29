#include "stdafx.h"
#include <string>
#include "iostream"

using namespace std;

//criando vector global de 8 posições (0-7)
int Vector_A[8]; 

int main()
{
	//inicializando o vetor com todas as posições iguais a zero
	for (int i = 0; i < 8; i++) {
		Vector_A[i] = 0;
	}

	//inicio da entrada dos dados pelo usuário
	cout << "Entre com numeros de 1 a 8 para preencher o vetor de 8 posicoes" << endl;
	for (int i = 0; i < 8; i++) {
		bool continuar = 0;
		while (continuar == 0) {
			cout << "Vector_A[" << i << "]" << endl;
			cin >> Vector_A[i];
			if (Vector_A[i] < 1 || Vector_A[i] > 8) {		//se valor menor que 1 ou maior que 8, retorna erro e repete o laço, pedindo novos valores
				cout << "VALOR INVÁLIDO" << endl;
			}
			else {										//se valor válido, prossegue para a próx posição ou continua para a próxima etapa 
				continuar = 1;	
			}
		}
	}

	int maior = 0; //variável que armazenará o valor do maior número
	int posicao; //variável que armazenará a posição do maior número

	for (int i = 0; i < 8; i ++) {
		if (Vector_A[i] > maior) {		//se o número da posição analisada for maior que o valor armazenado em "maior"
			posicao = i;				//então grava-se a posição vetorial daquele número em "posicao"
			maior = Vector_A[i];		//e grava-se o número na variável "maior
		}
	}

	cout << "O maior numero eh:" << maior << endl;
	cout << "E sua posicao eh:" << posicao << endl;
	while (true); //evita o fechamento do programa

    return 0;
}

