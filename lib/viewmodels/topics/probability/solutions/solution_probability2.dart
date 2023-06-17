class SolutionProbability2 {
  static String text =
'''
La probabilidad de que el evento A y el evento B ocurran simultáneamente es igual a la probabilidad de que ocurra el evento A dado que ha ocurrido el evento B, multiplicado por la probabilidad de que ocurra el evento B.

En otras palabras:

P(A ∩ B) = P(A|B) x P(B)

Ya que se asume que los eventos A y B son independientes, se puede decir que:

P(A|B) = P(A)

Por lo tanto, la fórmula se reduce a:

P(A ∩ B) = P(A) x P(B)

Sustituyendo los valores dados en el problema, se tiene:

P(A ∩ B) = (numEventosA / totalCasos) x (numEventosB / totalCasos)

Por lo tanto, la probabilidad de que el evento A y el evento B ocurran simultáneamente es igual a _P(A ∩ B)_.
''';
}