10 INPUT "Entre com a primeira nota: "; N1
20 INPUT "Entre com a segunda nota: "; N2
30 MEDIA = (VAL(N1) + VAL(N2))/2

40 IF MEDIA > 60 THEN GOTO 100
50 IF MEDIA < 30 THEN GOTO 200
60 IF MEDIA >= 30 AND MEDIA <= 60 THEN GOTO 300
70 END

100 PRINT "Aprovado direto"
110 END

200 PRINT "Reprovado direto"
210 END

300 INPUT "Entre com a nota da NP3: "; N3
310 NOVA_MEDIA = (MEDIA + VAL(N3)) / 2
320 IF NOVA_MEDIA > 50 THEN GOTO 400 ELSE GOTO 500

400 PRINT "Aprovado pela NP3"
410 END

500 PRINT "Reprovado na NP3"
510 END
