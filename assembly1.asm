###################################################################
# Disciplina: Arquitetura e Organiza��o de Computadores		  #
# Atividade: Avalia��o 01 � Programa��o em Linguagem de Montagem  #
# Programa 01							  #
# Aluno: - Cec�lia Brum de Moraes				  #
###################################################################


.data
	Vector_A	: 	.word	0, 0, 0, 0, 0, 0, 0, 0 #inicializa��o do vetor em 0
	
	#Sess�o de mensagens ao usu�rio#
	newline		:  	.asciiz "\n"
	MsgI		:     	.asciiz "\n\n Entre com n�meros entre 1 e 8 para preencher o vetor "
	MsgErro		:	.asciiz "\n\n Valor Inv�lido"
	Msg0		:	.asciiz "\n\n Vector_A[0] = "
	Msg1		:	.asciiz "\n\n Vector_A[1] = "
	Msg2		:	.asciiz "\n\n Vector_A[2] = "
	Msg3		:	.asciiz "\n\n Vector_A[3] = "
	Msg4		:	.asciiz "\n\n Vector_A[4] = "
	Msg5		:	.asciiz "\n\n Vector_A[5] = "
	Msg6		:	.asciiz "\n\n Vector_A[6] = "
	Msg7		:	.asciiz "\n\n Vector_A[7] = "
	MsgV		:	.asciiz "\n\n Maior valor encontrado:"
	MsgP		:	.asciiz "\n\n Posi��o no vetor:"
	#Fim da sess�o de mensagens aos usu�rios#
	
.text

main :

	#Carregando o array para os registradores
	la $s1, Vector_A
	#Fim do carregamento do array para os registradores	
	
###########Inicio da solicita��o de entrada de dados###########
		li  $v0, 4 		#chamada 4
		la  $a0, MsgI		#Mensagem inicial 
		syscall
	
	#POSI��O 0#
p0:		li  $v0, 4 		#chamada 4
		la  $a0, Msg0		#Pedir pelo preenchimento do Vetor posi��o 0
		syscall
		li  $v0, 5              # chamada 5
      		syscall 
		blt $v0, 1, error0	#Se menor que 1, v� para error0
		bgt $v0, 8, error0	#Se maior que 8, v� para error0
		bnez $v0, save0		#Se tudo ok, neste ponto, ir� para save0
error0:		li  $v0, 4 		#chamada 4
		la  $a0, MsgErro	#Mensagem de erro
		syscall
		j	p0		#V� para p0
save0:		sw $v0, 0($s1)     	# salva o valor entrado de $v0 para a posi��o Vector_A[0] 
	

	#POSI��O 1#
p1:		li  $v0, 4 		#chamada 4
		la  $a0, Msg1		#Pedir pelo preenchimento do Vetor posi��o 1
		syscall
		li  $v0, 5              # chamada 5
      		syscall 
		blt $v0, 1, error1	#Se menor que 1, v� para error1
		bgt $v0, 8, error1	#Se maior que 8, v� para error1
		bnez $v0, save1		#Se tudo ok, neste ponto, ir� para save1
error1:		li  $v0, 4 		#chamada 4
		la  $a0, MsgErro	#Mensagem de erro
		syscall
		j	p1		#V� para p1
save1:		sw $v0, 4($s1)     	# salva o valor entrado de $v0 para a posi��o Vector_A[1] 


	#POSI��O 2#
p2:		li  $v0, 4 		#chamada 4
		la  $a0, Msg2		#Pedir pelo preenchimento do Vetor posi��o 2
		syscall
		li  $v0, 5              # chamada 5
      		syscall 
		blt $v0, 1, error2	#Se menor que 1, v� para error2
		bgt $v0, 8, error2	#Se maior que 8, v� para error2
		bnez $v0, save2		#Se tudo ok, neste ponto, ir� para save2
error2:		li  $v0, 4 		#chamada 4
		la  $a0, MsgErro	#Mensagem de erro
		syscall
		j	p2		#V� para p2
save2:		sw $v0, 8($s1)     	# salva o valor entrado de $v0 para a posi��o Vector_A[2] 



	#POSI��O 3#
p3:		li  $v0, 4 		#chamada 4
		la  $a0, Msg3		#Pedir pelo preenchimento do Vetor posi��o 3
		syscall
		li  $v0, 5              # chamada 5
      		syscall 
		blt $v0, 1, error3	#Se menor que 1, v� para error3
		bgt $v0, 8, error3	#Se maior que 8, v� para error3
		bnez $v0, save3		#Se tudo ok, neste ponto, ir� para save3
error3:		li  $v0, 4 		#chamada 4
		la  $a0, MsgErro	#Mensagem de erro
		syscall
		j	p3		#V� para p3
save3:		sw $v0, 12($s1)     	# salva o valor entrado de $v0 para a posi��o Vector_A[3] 


	#POSI��O 4#
p4:		li  $v0, 4 		#chamada 4
		la  $a0, Msg4		#Pedir pelo preenchimento do Vetor posi��o 3
		syscall
		li  $v0, 5              # chamada 5
      		syscall 
		blt $v0, 1, error4	#Se menor que 1, v� para error4
		bgt $v0, 8, error4	#Se maior que 8, v� para error4
		bnez $v0, save4		#Se tudo ok, neste ponto, ir� para save4
error4:		li  $v0, 4 		#chamada 4
		la  $a0, MsgErro	#Mensagem de erro
		syscall
		j	p4		#V� para p4
save4:		sw $v0, 16($s1)     	# salva o valor entrado de $v0 para a posi��o Vector_A[4] 


	#POSI��O 5#
p5:		li  $v0, 4 		#chamada 4
		la  $a0, Msg5		#Pedir pelo preenchimento do Vetor posi��o 5
		syscall
		li  $v0, 5              # chamada 5
      		syscall 
		blt $v0, 1, error5	#Se menor que 1, v� para error5
		bgt $v0, 8, error5	#Se maior que 8, v� para error5
		bnez $v0, save5		#Se tudo ok, neste ponto, ir� para save5
error5:		li  $v0, 4 		#chamada 4
		la  $a0, MsgErro	#Mensagem de erro
		syscall
		j	p5		#V� para p5
save5:		sw $v0, 20($s1)     	# salva o valor entrado de $v0 para a posi��o Vector_A[5] 


	#POSI��O 6#
p6:		li  $v0, 4 		#chamada 4
		la  $a0, Msg6		#Pedir pelo preenchimento do Vetor posi��o 6
		syscall
		li  $v0, 5              # chamada 5
      		syscall 
		blt $v0, 1, error6	#Se menor que 1, v� para error6
		bgt $v0, 8, error6	#Se maior que 8, v� para error6
		bnez $v0, save6		#Se tudo ok, neste ponto, ir� para save6
error6:		li  $v0, 4 		#chamada 4
		la  $a0, MsgErro	#Mensagem de erro
		syscall
		j	p6		#V� para p6
save6:		sw $v0, 24($s1)     	# salva o valor entrado de $v0 para a posi��o Vector_A[6] 


	#POSI��O 7#
p7:		li  $v0, 4 		#chamada 4
		la  $a0, Msg7		#Pedir pelo preenchimento do Vetor posi��o 7
		syscall
		li  $v0, 5              # chamada 5
      		syscall 
		blt $v0, 1, error7	#Se menor que 1, v� para error7
		bgt $v0, 8, error7	#Se maior que 8, v� para error7
		bnez $v0, save7		#Se tudo ok, neste ponto, ir� para save7
error7:		li  $v0, 4 		#chamada 4
		la  $a0, MsgErro	#Mensagem de erro
		syscall
		j	p7		#V� para p7
save7:		sw $v0, 28($s1)     	# salva o valor entrado de $v0 para a posi��o Vector_A[7] 

###########Fim da solicita��o de entrada de dados###########


###########In�cio da an�lise do Vector_A em busca do maior n�mero###########
#Posi��o ser� gravada em $t3
#Valor ser� gravado em $t4
# c = compara��o seguido da posi��o a ser comparada
# s = save seguido do n�mero da posi��o a ser salva	
	add $t3, $0, $0 	#inicializa $t3(posi��o) em zero
	add $t4, $0, $0		#inicializa $t4(maior valor) em zero
	
	##inicio do processo de compara��o##
	
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
		add $t3, $0, $0		#salva a posi��o 0
		j	c1

s1	:	add $t4, $t1, $0
		add $t3, $0, 1		#salva a posi��o 1
		j	c2

s2	:	add $t4, $t1, $0	#salva o valor armazenado de $t1 em $t4
		add $t3, $0, 2		#salva a posi��o 2
		j	c3

s3	:	add $t4, $t1, $0	#salva o valor armazenado de $t1 em $t4
		add $t3, $0, 3		#salva a posi��o 3
		j	c4

s4	:	add $t4, $t1, $0	#salva o valor armazenado de $t1 em $t4
		add $t3, $0, 4		#salva a posi��o 4
		j	c5

s5	:	add $t4, $t1, $0	#salva o valor armazenado de $t1 em $t4
		add $t3, $0, 5		#salva a posi��o 5
		j	c6

s6	:	add $t4, $t1, $0	#salva o valor armazenado de $t1 em $t4
		add $t3, $0, 6		#salva a posi��o 6
		j	c7

s7	:	add $t4, $t1, $0	#salva o valor armazenado de $t1 em $t4
		add $t3, $0, 7		#salva a posi��o 7
		j	exit
	##fim do processo de compara��o##
	
	
exit:		li  $v0, 4 		#chamada 4
		la  $a0, MsgP		#Anuncia a posi��o no vetor do maior valor
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
###########Fim da an�lise do Vector_A em busca do maior n�mero###########	
	
	
	li $v0, 10    	# Finaliza��o do programa
	syscall		#Finaliza��o do programa
