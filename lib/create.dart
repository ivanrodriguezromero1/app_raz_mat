import 'dart:math';
import 'package:raz_mat/models/problema.dart';

Problema createProblemSeries(String plantilla, int? dificultad) {
  // Pide la dificultad y el idioma al usuario
  // Genera el problema de serie aritmética según la dificultad y el idioma ingresado
  Random random = Random();
  int a = random.nextInt(8) + 1;
  int r = random.nextInt(8) + 1;
  int n = (dificultad!+1)*4 + random.nextInt(4);
  double suma = (n / 2) * (2 * a + (n - 1) * r);
  // String problema = "Encuentra la suma de los primeros $n términos de la serie aritmética $a, "
  //                   "${a + r}, ${a + 2 * r}, ... en $idioma.";
  String serie = "$a, ${a+r}, ${a+2*r}, ...";
  String enunciado = plantilla.replaceAll("_n_", n.toString())
                            .replaceAll("_serie_", serie);
  // Calcula la respuesta correcta y las alternativas para despistar al usuario
  int respuesta = suma.toInt();
  List<int> alternativas = [];
  alternativas.add(respuesta);
  for (int i = 0; i < 3; i++) {
    int alternativa = random.nextInt(suma.toInt() * 2) + 1;
    while (alternativas.contains(alternativa)) {
      alternativa = random.nextInt(suma.toInt() * 2) + 1;
    }
    alternativas.add(alternativa);
  }
  alternativas.shuffle();
  int clave = alternativas.indexOf(respuesta);
  return  Problema(enunciado, alternativas,clave);
}
