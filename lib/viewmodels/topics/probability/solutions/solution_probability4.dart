const solutionProbability4Es =
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
const solutionProbability4En =
'''
We are asked to find the probability of A having occurred given that we know B has occurred, i.e. P(A|B). Using Bayes' Theorem, we can write:

P(A|B) = P(B|A) * P(A) / P(B)

Where:

P(A|B) is the probability of A having occurred given that we know B has occurred.
P(B|A) is the probability of B having occurred given that we know A has occurred, which is given as numEventosBA / totalCasos.
P(A) is the probability of A having occurred, which is given as numEventosA / totalCasos.
P(B) is the probability of B having occurred, which is given as numEventosB_ / totalCasos.

Substituting the variables with the values given to us, we have:

P(A|B) = (numEventosBA / totalCasos) * (numEventosA / totalCasos) / (numEventosB_ / totalCasos)

Simplifying, we get:

P(A|B) = (numEventosBA * numEventosA) / (totalCasos * numEventosB_)

Therefore, the probability of A having occurred given that we know B has occurred is _P(A|B)_.
''';