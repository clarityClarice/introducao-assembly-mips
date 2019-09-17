###################################################################
# Disciplina: Arquitetura e Organização de Computadores		  #
# Atividade: Avaliação 01 – Programação em Linguagem de Montagem  #
# Programa 01							  #
# Aluno: - Cecília Brum de Moraes				  #
###################################################################


.data
	Vector_A	: 	.word	0, 0, 0, 0, 0, 0, 0, 0 #inicialização do vetor em 0
	
	#Sessão de mensagens ao usuário#
	newline		:  	.asciiz "\n"
	MsgI		:     	.asciiz "\n\n Entre com números entre 1 e 8 para preencher o vetor "
	MsgErro		:	.asciiz "\n\n Valor Inválido"
	Msg0		:	.asciiz "\n\n Vector_A[0] = "
	Msg1		:	.asciiz "\n\n Vector_A[1] = "
	Msg2		:	.asciiz "\n\n Vector_A[2] = "
	Msg3		:	.asciiz "\n\n Vector_A[3] = "
	Msg4		:	.asciiz "\n\n Vector_A[4] = "
	Msg5		:	.asciiz "\n\n Vector_A[5] = "
	Msg6		:	.asciiz "\n\n Vector_A[6] = "
	Msg7		:	.asciiz "\n\n Vector_A[7] = "
	MsgV		:	.asciiz "\n\n Maior valor encontrado:"
	MsgP		:	.asciiz "\n\n Posição no vetor:"
	#Fim da sessão de mensagens aos usuários#
	
.text

main :

	#Carregando o array para os registradores
	la $s1, Vector_A
	#Fim do carregamento do array para os registradores	
	
###########Inicio da solicitação de entrada de dados###########
		li  $v0, 4 		#chamada 4
		la  $a0, MsgI		#Mensagem inicial 
		syscall
	
	#POSIÇÃO 0#
p0:		li  $v0, 4 		#chamada 4
		la  $a0, Msg0		#Pedir pelo preenchimento do Vetor posição 0
		syscall
		li  $v0, 5              # chamada 5
      		syscall 
		blt $v0, 1, error0	#Se menor que 1, vá para error0
		bgt $v0, 8, error0	#Se maior que 8, vá para error0
		bnez $v0, save0		#Se tudo ok, neste ponto, irá para save0
error0:		li  $v0, 4 		#chamada 4
		la  $a0, MsgErro	#Mensagem de erro
		syscall
		j	p0		#Vá para p0
save0:		sw $v0, 0($s1)     	# salva o valor entrado de $v0 para a posição Vector_A[0] 
	

	#POSIÇÃO 1#
p1:		li  $v0, 4 		#chamada 4
		la  $a0, Msg1		#Pedir pelo preenchimento do Vetor posição 1
		syscall
		li  $v0, 5              # chamada 5
      		syscall 
		blt $v0, 1, error1	#Se menor que 1, vá para error1
		bgt $v0, 8, error1	#Se maior que 8, vá para error1
		bnez $v0, save1		#Se tudo ok, neste ponto, irá para save1
error1:		li  $v0, 4 		#chamada 4
		la  $a0, MsgErro	#Mensagem de erro
		syscall
		j	p1		#Vá para p1
save1:		sw $v0, 4($s1)     	# salva o valor entrado de $v0 para a posição Vector_A[1] 


	#POSIÇÃO 2#
p2:		li  $v0, 4 		#chamada 4
		la  $a0, Msg2		#Pedir pelo preenchimento do Vetor posição 2
		syscall
		li  $v0, 5              # chamada 5
      		syscall 
		blt $v0, 1, error2	#Se menor que 1, vá para error2
		bgt $v0, 8, error2	#Se maior que 8, vá para error2
		bnez $v0, save2		#Se tudo ok, neste ponto, irá para save2
error2:		li  $v0, 4 		#chamada 4
		la  $a0, MsgErro	#Mensagem de erro
		syscall
		j	p2		#Vá para p2
save2:		sw $v0, 8($s1)     	# salva o valor entrado de $v0 para a posição Vector_A[2] 



	#POSIÇÃO 3#
p3:		li  $v0, 4 		#chamada 4
		la  $a0, Msg3		#Pedir pelo preenchimento do Vetor posição 3
		syscall
		li  $v0, 5              # chamada 5
      		syscall 
		blt $v0, 1, error3	#Se menor que 1, vá para error3
		bgt $v0, 8, error3	#Se maior que 8, vá para error3
		bnez $v0, save3		#Se tudo ok, neste ponto, irá para save3
error3:		li  $v0, 4 		#chamada 4
		la  $a0, MsgErro	#Mensagem de erro
		syscall
		j	p3		#Vá para p3
save3:		sw $v0, 12($s1)     	# salva o valor entrado de $v0 para a posição Vector_A[3] 


	#POSIÇÃO 4#
p4:		li  $v0, 4 		#chamada 4
		la  $a0, Msg4		#Pedir pelo preenchimento do Vetor posição 3
		syscall
		li  $v0, 5              # chamada 5
      		syscall 
		blt $v0, 1, error4	#Se menor que 1, vá para error4
		bgt $v0, 8, error4	#Se maior que 8, vá para error4
		bnez $v0, save4		#Se tudo ok, neste ponto, irá para save4
error4:		li  $v0, 4 		#chamada 4
		la  $a0, MsgErro	#Mensagem de erro
		syscall
		j	p4		#Vá para p4
save4:		sw $v0, 16($s1)     	# salva o valor entrado de $v0 para a posição Vector_A[4] 


	#POSIÇÃO 5#
p5:		li  $v0, 4 		#chamada 4
		la  $a0, Msg5		#Pedir pelo preenchimento do Vetor posição 5
		syscall
		li  $v0, 5              # chamada 5
      		syscall 
		blt $v0, 1, error5	#Se menor que 1, vá para error5
		bgt $v0, 8, error5	#Se maior que 8, vá para error5
		bnez $v0, save5		#Se tudo ok, neste ponto, irá para save5
error5:		li  $v0, 4 		#chamada 4
		la  $a0, MsgErro	#Mensagem de erro
		syscall
		j	p5		#Vá para p5
save5:		sw $v0, 20($s1)     	# salva o valor entrado de $v0 para a posição Vector_A[5] 


	#POSIÇÃO 6#
p6:		li  $v0, 4 		#chamada 4
		la  $a0, Msg6		#Pedir pelo preenchimento do Vetor posição 6
		syscall
		li  $v0, 5              # chamada 5
      		syscall 
		blt $v0, 1, error6	#Se menor que 1, vá para error6
		bgt $v0, 8, error6	#Se maior que 8, vá para error6
		bnez $v0, save6		#Se tudo ok, neste ponto, irá para save6
error6:		li  $v0, 4 		#chamada 4
		la  $a0, MsgErro	#Mensagem de erro
		syscall
		j	p6		#Vá para p6
save6:		sw $v0, 24($s1)     	# salva o valor entrado de $v0 para a posição Vector_A[6] 


	#POSIÇÃO 7#
p7:		li  $v0, 4 		#chamada 4
		la  $a0, Msg7		#Pedir pelo preenchimento do Vetor posição 7
		syscall
		li  $v0, 5              # chamada 5
      		syscall 
		blt $v0, 1, error7	#Se menor que 1, vá para error7
		bgt $v0, 8, error7	#Se maior que 8, vá para error7
		bnez $v0, save7		#Se tudo ok, neste ponto, irá para save7
error7:		li  $v0, 4 		#chamada 4
		la  $a0, MsgErro	#Mensagem de erro
		syscall
		j	p7		#Vá para p7
save7:		sw $v0, 28($s1)     	# salva o valor entrado de $v0 para a posição Vector_A[7] 

###########Fim da solicitação de entrada de dados###########


###########Início da análise do Vector_A em busca do maior número###########
#Posição será gravada em $t3
#Valor será gravado em $t4
# c = comparação seguido da posição a ser comparada
# s = save seguido do número da posição a ser salva	
	add $t3, $0, $0 	#inicializa $t3(posição) em zero
	add $t4, $0, $0		#inicializa $t4(maior valor) em zero
	
	##inicio do processo de comparação##
	
c0	:	lw  $t1, 0($s1)		#carrega Vector_A[0] em $t1
		j	s0		#salve Vector_A[1]

c1	:	lw $t1, 4($s1)		#carrega Vector_A[1] em $t1
		bgt $t1, $t4, s1

c2	:	lw $t1, 8($s1)		#carrega Vector_A[2] em $t1
		bgt $t1, $t4, s2

c3	:	lw $t1,12($s1)		#carrega Vector_A[3] em $t1
		bgt $t1, $t4, s3
	
c4	:	lw $t1, 16($s1)		#carrega Vector_A[4] em $t1
		bgt $t1, $t4, s4

c5	:	lw $t1, 20($s1)		#carrega Vector_A[5] em $t1
		bgt $t1, $t4, s5

c6	:	lw $t1, 24($s1)		#carrega Vector_A[6] em $t1
		bgt $t1, $t4, s6

c7	:	lw $t1, 28($s1)		#carrega Vector_A[7] em $t1
		bgt $t1, $t4, s7
		j	exit


		
s0	:	add $t4, $t1, $0	#salva o valor armazenado de $t1 em $t4
		add $t3, $0, $0		#salva a posição 0
		j	c1

s1	:	add $t4, $t1, $0
		add $t3, $0, 1		#salva a posição 1
		j	c2

s2	:	add $t4, $t1, $0	#salva o valor armazenado de $t1 em $t4
		add $t3, $0, 2		#salva a posição 2
		j	c3

s3	:	add $t4, $t1, $0	#salva o valor armazenado de $t1 em $t4
		add $t3, $0, 3		#salva a posição 3
		j	c4

s4	:	add $t4, $t1, $0	#salva o valor armazenado de $t1 em $t4
		add $t3, $0, 4		#salva a posição 4
		j	c5

s5	:	add $t4, $t1, $0	#salva o valor armazenado de $t1 em $t4
		add $t3, $0, 5		#salva a posição 5
		j	c6

s6	:	add $t4, $t1, $0	#salva o valor armazenado de $t1 em $t4
		add $t3, $0, 6		#salva a posição 6
		j	c7

s7	:	add $t4, $t1, $0	#salva o valor armazenado de $t1 em $t4
		add $t3, $0, 7		#salva a posição 7
		j	exit
	##fim do processo de comparação##
	
	
exit:		li  $v0, 4 		#chamada 4
		la  $a0, MsgP		#Anuncia a posição no vetor do maior valor
		syscall
		li  $v0, 1 		#chamada 1
		add $a0, $0, $t3
		syscall
		
		li  $v0, 4 		#chamada 4
		la  $a0, MsgV		#Anuncia o maior valor encontrado
		syscall
		li  $v0, 1 		#chamada 1
		add $a0, $0, $t4
		syscall
###########Fim da análise do Vector_A em busca do maior número###########	
	
	
	li $v0, 10    	# Finalização do programa
	syscall		#Finalização do programa
