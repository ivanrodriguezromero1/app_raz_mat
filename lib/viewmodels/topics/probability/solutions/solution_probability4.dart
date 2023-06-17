class SolutionProbability4 {
  static String text =
'''
Se nos pide encontrar la probabilidad de que A haya ocurrido dado que sabemos que B ha ocurrido, es decir, P(A|B). Utilizando el Teorema de Bayes, podemos escribir:

P(A|B) = P(B|A) * P(A) / P(B)

Donde:

P(A|B) es la probabilidad de que A haya ocurrido dado que sabemos que B ha ocurrido.
P(B|A) es la probabilidad de que B haya ocurrido dado que sabemos que A ha ocurrido, que se nos da como numEventosBA / totalCasos.
P(A) es la probabilidad de que A haya ocurrido, que se nos da como numEventosA / totalCasos.
P(B) es la probabilidad de que B haya ocurrido, que se nos da como numEventosB_ / totalCasos.

Reemplazando las variables con los valores que se nos dan, tenemos:

P(A|B) = (numEventosBA / totalCasos) * (numEventosA / totalCasos) / (numEventosB_ / totalCasos)

Simplificando, nos queda:

P(A|B) = (numEventosBA * numEventosA) / (totalCasos * numEventosB_)

Por lo tanto, la probabilidad de que A haya ocurrido dado que sabemos que B ha ocurrido es _P(A|B)_.
''';
}