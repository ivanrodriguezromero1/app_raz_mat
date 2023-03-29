const solutionProbability3Es =
'''
Primero, recordemos la definición de la probabilidad condicional:

P(B|A) = P(A ∩ B) / P(A)

Donde P(B|A) es la probabilidad de que ocurra B dado que ya ha ocurrido A, P(A ∩ B) es la probabilidad de que ambos eventos ocurran simultáneamente y P(A) es la probabilidad de que ocurra A.

En este caso, se sabe que el número de eventos A es igual a numEventosA, lo que significa que P(A) = numEventosA / total de Casos. Además, se sabe que el número de eventos A y B que ocurren simultáneamente es intersección, lo que significa que P(A ∩ B) = interseccion / total de Casos.

Por lo tanto, la probabilidad de que ocurra B dado que ya ha ocurrido A es:

P(B|A) = P(A ∩ B) / P(A) 

P(B|A) = (interseccion/total de casos)/(numEventosA/total de casos) 

P(B|A) = interseccion / numEventosA

Entonces, la probabilidad de que también haya ocurrido B dado que ya ha ocurrido A es igual a _P(B|A)_.
''';
const solutionProbability3En =
'''
First, let's remember the definition of conditional probability:

P(B|A) = P(A ∩ B) / P(A)

Where P(B|A) is the probability of B occurring given that A has already occurred, P(A ∩ B) is the probability of both events occurring simultaneously, and P(A) is the probability of A occurring.

In this case, we know that the number of events A is equal to numEventosA, which means that P(A) = numEventosA / total Cases. Additionally, we know that the number of events A and B that occur simultaneously is the intersection, which means that P(A ∩ B) = interseccion / total Cases.

Therefore, the probability of B occurring given that A has already occurred is:

P(B|A) = P(A ∩ B) / P(A)

P(B|A) = (interseccion/total Cases)/(numEventosA/total Cases)

P(B|A) = interseccion / numEventosA

So, the probability of B also having occurred given that A has already occurred is equal to _P(B|A)_.
''';