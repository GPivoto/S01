10 RANDOMIZE TIMER
20 NUM = INT(RND * 101)   
30 PRINT "Tente adivinhar o numero entre 0 e 100."

40 INPUT "Digite seu palpite: "; PALPITE

50 IF PALPITE = NUM THEN GOTO 100
60 IF PALPITE < NUM THEN PRINT "O numero correto e maior."
70 IF PALPITE > NUM THEN PRINT "O numero correto e menor."
80 GOTO 40

100 PRINT "Parabens! Voce acertou, o numero era "; NUM
110 END
