###################################################################
# Disciplina: Arquitetura e Organização de Computadores		  #
# Atividade: Avaliação 01 – Programação em Linguagem de Montagem  #
# Programa 01							  #
# Aluno: - Cecília Brum de Moraes				  #
###################################################################

.data
	Vector_A	: 	.word	0, 0, 0, 0, 0, 0, 0, 0 #inicialização do vetor em 0
	Vector_B	:	.word	0, 0, 0, 0, 0, 0, 0, 0 #Inicialização do vetor em 0
	Vector_C	: 	.word	0, 0, 0, 0, 0, 0, 0, 0 #inicialização do vetor em 0
	
	#Sessão de mensagens ao usuário#
	newline		:  	.asciiz "\n"
	MsgI		:     	.asciiz "\n\n Entre com números entre 1 e 8 para escolher o tamanho do vetor "
	MsgErro		:	.asciiz "\n\n Valor Inválido"
	MsgA0		:	.asciiz "\n\n Vector_A[0] = "
	MsgA1		:	.asciiz "\n\n Vector_A[1] = "
	MsgA2		:	.asciiz "\n\n Vector_A[2] = "
	MsgA3		:	.asciiz "\n\n Vector_A[3] = "
	MsgA4		:	.asciiz "\n\n Vector_A[4] = "
	MsgA5		:	.asciiz "\n\n Vector_A[5] = "
	MsgA6		:	.asciiz "\n\n Vector_A[6] = "
	MsgA7		:	.asciiz "\n\n Vector_A[7] = "
	MsgB0		:	.asciiz "\n\n Vector_B[0] = "
	MsgB1		:	.asciiz "\n\n Vector_B[1] = "
	MsgB2		:	.asciiz "\n\n Vector_B[2] = "
	MsgB3		:	.asciiz "\n\n Vector_B[3] = "
	MsgB4		:	.asciiz "\n\n Vector_B[4] = "
	MsgB5		:	.asciiz "\n\n Vector_B[5] = "
	MsgB6		:	.asciiz "\n\n Vector_B[6] = "
	MsgB7		:	.asciiz "\n\n Vector_B[7] = "
	MsgC0		:	.asciiz "\n\n Vector_C[0] = "
	MsgC1		:	.asciiz "\n\n Vector_C[1] = "
	MsgC2		:	.asciiz "\n\n Vector_C[2] = "
	MsgC3		:	.asciiz "\n\n Vector_C[3] = "
	MsgC4		:	.asciiz "\n\n Vector_C[4] = "
	MsgC5		:	.asciiz "\n\n Vector_C[5] = "
	MsgC6		:	.asciiz "\n\n Vector_C[6] = "
	MsgC7		:	.asciiz "\n\n Vector_C[7] = "
	MsgR		:	.asciiz "\n\n Resultado: "
	#Fim da sessão de mensagens ao usuário#

.text

main	:
	#Carregando os endereços dos arrays para os registradores
	la $s1, Vector_A
	la $s2, Vector_B
	la $s3, Vector_C
	
########Solicitação de entrada de dados########
inicio	:
		li  $v0, 4 		#chamada 4
		la  $a0, MsgI		#Mensagem inicial 
		syscall
		li  $v0, 5              # chamada 5 - leitura
      		syscall
   	   	blt $v0, 1, error0	#Se menor que 1, vá para error0
		bgt $v0, 8, error0	#Se maior que 8, vá para error0
		j	exit
error0	:	li  $v0, 4 		#chamada 4
		la  $a0, MsgErro	#Mensagem de erro
		syscall
		j  inicio
		
	#preenchimento dos vetores#		
exit	:	
		add $s5, $v0, $0	#salva em $s5 o que  foi informado em $v0
		
		li  $v0, 4 		#chamada 4
		la  $a0, MsgA0		#Pedir pelo preenchimento do Vetor_A[0]
		syscall
		li  $v0, 5              # chamada 5
      		syscall
      		sw $v0, 0($s1)
      		
	   	blt $s5, 2, exit2	#se menor que 2, pular a execução das demais entradas
		li  $v0, 4 		#chamada 4
		la  $a0, MsgA1		#Pedir pelo preenchimento do Vetor_A[1]
		syscall
		li  $v0, 5              # chamada 5
      		syscall
      		sw $v0, 4($s1)
      		
      		blt $s5, 3, exit2	#se menor que 3, pular a execução das demais entradas
	      	li  $v0, 4 		#chamada 4
		la  $a0, MsgA2		#Pedir pelo preenchimento do Vetor_A[2]
		syscall
		li  $v0, 5              # chamada 5
      		syscall
      		sw $v0, 8($s1)
      		
      		blt $s5, 4, exit2	#se menor que 4, pular a execução das demais entradas
	     	li  $v0, 4 		#chamada 4
		la  $a0, MsgA3		#Pedir pelo preenchimento do Vetor_A[3]
		syscall
		li  $v0, 5              # chamada 5
      		syscall
      		sw $v0, 12($s1)
      		
      		blt $s5, 5, exit2	#se menor que 5, pular a execução das demais entradas
	    	li  $v0, 4 		#chamada 4
		la  $a0, MsgA4		#Pedir pelo preenchimento do Vetor_A[4]
		syscall
		li  $v0, 5              # chamada 5
      		syscall
      		sw $v0, 16($s1)
      		
      		blt $s5, 6, exit2	#se menor que 6, pular a execução das demais entradas
	     	li  $v0, 4 		#chamada 4
		la  $a0, MsgA5		#Pedir pelo preenchimento do Vetor_A[5]
		syscall
		li  $v0, 5              # chamada 5
      		syscall
      		sw $v0, 20($s1)
      		
      		blt $s5, 7, exit2	#se menor que 7, pular a execução das demais entradas
	     	li  $v0, 4 		#chamada 4
		la  $a0, MsgA6		#Pedir pelo preenchimento do Vetor_A[6]
		syscall
		li  $v0, 5              # chamada 5
      		syscall
      		sw $v0, 24($s1)
      		
      		blt $s5, 8, exit2	#se menor que 8, pular a execução das demais entradas
	   	li  $v0, 4 		#chamada 4
		la  $a0, MsgA7		#Pedir pelo preenchimento do Vetor_A[7]
		syscall
		li  $v0, 5              # chamada 5
      		syscall
      		sw $v0, 28($s1)
      		
      		
 exit2	:     	
		
		li  $v0, 4 		#chamada 4
		la  $a0, MsgB0		#Pedir pelo preenchimento do Vetor_B[0]
		syscall
		li  $v0, 5              # chamada 5
      		syscall
      		sw $v0, 0($s2)
      		
	   	blt $s5, 2, exit3	#se menor que 2, pular a execução das demais entradas
		li  $v0, 4 		#chamada 4
		la  $a0, MsgB1		#Pedir pelo preenchimento do Vetor_B[1]
		syscall
		li  $v0, 5              # chamada 5
      		syscall
      		sw $v0, 4($s2)
      		
      		blt $s5, 3, exit3	#se menor que 3, pular a execução das demais entradas
	      	li  $v0, 4 		#chamada 4
		la  $a0, MsgB2		#Pedir pelo preenchimento do Vetor_B[2]
		syscall
		li  $v0, 5              # chamada 5
      		syscall
      		sw $v0, 8($s2)
      		
      		blt $s5, 4, exit3	#se menor que 4, pular a execução das demais entradas
	     	li  $v0, 4 		#chamada 4
		la  $a0, MsgB3		#Pedir pelo preenchimento do Vetor_B[3]
		syscall
		li  $v0, 5              # chamada 5
      		syscall
      		sw $v0, 12($s2)
      		
      		blt $s5, 5, exit3	#se menor que 5, pular a execução das demais entradas
	    	li  $v0, 4 		#chamada 4
		la  $a0, MsgB4		#Pedir pelo preenchimento do Vetor_B[4]
		syscall
		li  $v0, 5              # chamada 5
      		syscall
      		sw $v0, 16($s2)
      		
      		blt $s5, 6, exit3	#se menor que 6, pular a execução das demais entradas
	     	li  $v0, 4 		#chamada 4
		la  $a0, MsgB5		#Pedir pelo preenchimento do Vetor_B[5]
		syscall
		li  $v0, 5              # chamada 5
      		syscall
      		sw $v0, 20($s2)
      		
      		blt $s5, 7, exit3	#se menor que 7, pular a execução das demais entradas
	     	li  $v0, 4 		#chamada 4
		la  $a0, MsgB6		#Pedir pelo preenchimento do Vetor_B[6]
		syscall
		li  $v0, 5              # chamada 5
      		syscall
      		sw $v0, 24($s2)
      		
      		blt $s5, 8, exit3	#se menor que 8, pular a execução das demais entradas
	   	li  $v0, 4 		#chamada 4
		la  $a0, MsgB7		#Pedir pelo preenchimento do Vetor_B[7]
		syscall
		li  $v0, 5              # chamada 5
      		syscall
      		sw $v0, 28($s2)	
      		#FIM DA ENTRADA DE DADOS#
      		
      		#CALCULOS#
exit3	:     		
      		lw $t1, 0($s1)		#carrega o valor de Vector_A[0] em $t1
      		lw $t2, 0($s2)		#carrega o valor de Vector_B[0] em $t2
      		add $t3, $t1, $t2	#Soma $t1 e $t2
      		sw $t3, 0($s3)		#salva o resultado de $t3 em Vector_C[0]
      		
      		
      		blt $s5, 2, exit4
      		lw $t1, 4($s1)		#carrega o valor de Vector_A[1] em $t1
      		lw $t2, 4($s2)		#carrega o valor de Vector_B[1] em $t2
      		add $t3, $t1, $t2	#Soma $t1 e $t2
      		sw $t3, 4($s3)		#salva o resultado de $t3 em Vector_C[1]
      		
      		blt $s5, 3, exit4
      		lw $t1, 8($s1)		#carrega o valor de Vector_A[2] em $t1
      		lw $t2, 8($s2)		#carrega o valor de Vector_B[2] em $t2
      		add $t3, $t1, $t2	#Soma $t1 e $t2
      		sw $t3, 8($s3)		#salva o resultado de $t3 em Vector_C[2]
      		
      		blt $s5, 4, exit4
      		lw $t1, 12($s1)		#carrega o valor de Vector_A[3] em $t1
      		lw $t2, 12($s2)		#carrega o valor de Vector_B[3] em $t2
      		add $t3, $t1, $t2	#Soma $t1 e $t2
      		sw $t3, 12($s3)		#salva o resultado de $t3 em Vector_C[3]
      		
      		blt $s5, 5, exit4
      		lw $t1, 16($s1)		#carrega o valor de Vector_A[4] em $t1
      		lw $t2, 16($s2)		#carrega o valor de Vector_B[4] em $t2
      		add $t3, $t1, $t2	#Soma $t1 e $t2
      		sw $t3, 16($s3)		#salva o resultado de $t3 em Vector_C[4]
      		
      		
      		blt $s5, 6, exit4
      		lw $t1, 20($s1)		#carrega o valor de Vector_A[5] em $t1
      		lw $t2, 20($s2)		#carrega o valor de Vector_B[5] em $t2
      		add $t3, $t1, $t2	#Soma $t1 e $t2
      		sw $t3, 20($s3)		#salva o resultado de $t3 em Vector_C[5]
      		
      		blt $s5, 7, exit4
      		lw $t1, 24($s1)		#carrega o valor de Vector_A[6] em $t1
      		lw $t2, 24($s2)		#carrega o valor de Vector_B[6] em $t2
      		add $t3, $t1, $t2	#Soma $t1 e $t2
      		sw $t3, 24($s3)		#salva o resultado de $t3 em Vector_C[6]
      		
      		blt $s5, 8, exit4
      		lw $t1, 28($s1)		#carrega o valor de Vector_A[7] em $t1
      		lw $t2, 28($s2)		#carrega o valor de Vector_B[7] em $t2
      		add $t3, $t1, $t2	#Soma $t1 e $t2
      		sw $t3, 28($s3)		#salva o resultado de $t3 em Vector_C[7]
      	#FIM DOS CALCULOS#
      	
exit4	:

		li  $v0, 4 		#chamada 4
		la  $a0, MsgC0		#Anuncia o resultado armazenado em Vector_C[0]
		syscall
		li  $v0, 1 		#chamada 1
		lw  $t1, 0($s3)
		add $a0, $0, $t1
		syscall
		
		blt $s5, 2, exit5
		li  $v0, 4 		#chamada 4
		la  $a0, MsgC1		#Anuncia o resultado armazenado em Vector_C[1]
		syscall
		li  $v0, 1 		#chamada 1
		lw  $t1, 4($s3)
		add $a0, $0, $t1
		syscall
		
		blt $s5, 3, exit5
		li  $v0, 4 		#chamada 4
		la  $a0, MsgC2		#Anuncia o resultado armazenado em Vector_C[2]
		syscall
		li  $v0, 1 		#chamada 1
		lw  $t1, 8($s3)
		add $a0, $0, $t1
		syscall
		
		
		blt $s5, 4, exit5
		li  $v0, 4 		#chamada 4
		la  $a0, MsgC3		#Anuncia o resultado armazenado em Vector_C[3]
		syscall
		li  $v0, 1 		#chamada 1
		lw  $t1, 12($s3)
		add $a0, $0, $t1
		syscall
		
		blt $s5, 5, exit5
		li  $v0, 4 		#chamada 4
		la  $a0, MsgC4		#Anuncia o resultado armazenado em Vector_C[4]
		syscall
		li  $v0, 1 		#chamada 1
		lw  $t1, 16($s3)
		add $a0, $0, $t1
		syscall
		
		blt $s5, 6, exit5
		li  $v0, 4 		#chamada 4
		la  $a0, MsgC5		#Anuncia o resultado armazenado em Vector_C[5]
		syscall
		li  $v0, 1 		#chamada 1
		lw  $t1, 20($s3)
		add $a0, $0, $t1
		syscall
		
		blt $s5, 7, exit5
		li  $v0, 4 		#chamada 4
		la  $a0, MsgC6		#Anuncia o resultado armazenado em Vector_C[6]
		syscall
		li  $v0, 1 		#chamada 1
		lw  $t1, 24($s3)
		add $a0, $0, $t1
		syscall
		
		blt $s5, 8, exit5
		li  $v0, 4 		#chamada 4
		la  $a0, MsgC7		#Anuncia o resultado armazenado em Vector_C[7]
		syscall
		li  $v0, 1 		#chamada 1
		lw  $t1, 28($s3)
		add $a0, $0, $t1
		syscall
		
		
		
exit5	:	
	li $v0, 10    	# Finalização do programa
	syscall		#Finalização do programa
