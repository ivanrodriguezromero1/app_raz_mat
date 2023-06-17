class SolutionProbability1 {
  static String text =
'''
La probabilidad de que el evento A ocurra es numEventosA / totalCasos, y la probabilidad de que el evento B ocurra es numEventosB / totalCasos.

Por regla de adición:

P(A U B) = P(A) + P(B) - P(A ∩ B)

donde:

P(A U B) es la probabilidad de que ocurra el evento A o el evento B (o ambos).
P(A) es la probabilidad de que ocurra el evento A.
P(B) es la probabilidad de que ocurra el evento B.
P(A ∩ B) es la probabilidad de que ocurran ambos eventos A y B.
Reemplazando con las variables del problema, tenemos:

P(A U B) = numEventosA/totalCasos + numEventosB/totalCasos - interseccion/totalCasos

Por lo tanto, la probabilidad de que el evento A o el evento B haya ocurrido es _P(A U B)_.
''';
}