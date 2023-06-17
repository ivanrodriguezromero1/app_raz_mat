class SolutionProbability3 {
  static String text =
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
}