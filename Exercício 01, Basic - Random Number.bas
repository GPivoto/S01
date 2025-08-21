10 let NUMERO_SECRETO = rnd(101)
40 PRINT "Bem-vindo ao Jogo de Adivinhação!"
50 PRINT "Tente adivinhar o número secreto entre 0 e 100."
60 INPUT "Qual é o seu palpite? "; PALPITE
70 IF PALPITE = NUMERO_SECRETO THEN GOTO 100
80 IF PALPITE < NUMERO_SECRETO THEN PRINT "O seu palpite está muito baixo."
90 IF PALPITE > NUMERO_SECRETO THEN PRINT "O seu palpite está muito alto."
95 GOTO 60 
100 PRINT "Parabéns! Você adivinhou o número secreto: "; 
101 PRINT NUMERO_SECRETO
110 END
