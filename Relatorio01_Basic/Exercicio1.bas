10 CLS
20 PRINT "Resolvendo equacoes quadraticas (ax^2 + bx + c = 0)"
30 INPUT "valor de a: "; A
40 INPUT "valor de b: "; B
50 INPUT "valor de c: "; C
60 DELTA = B * B - 4 * A * C
70 IF DELTA >= 0 THEN GOTO 100
80 PRINT "Nao possui raizes reais"
90 GOTO 170
100 IF DELTA > 0 THEN GOTO 130
110 X = -B / (2 * A)
120 PRINT X
130 X1 = (-B + SQR(DELTA)) / (2 * A)
140 X2 = (-B - SQR(DELTA)) / (2 * A)
150 PRINT X1
160 PRINT X2
170 END