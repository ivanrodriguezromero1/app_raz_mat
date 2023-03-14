import 'dart:math';
import 'package:raz_mat/models/problema.dart';

import 'my_app_localizations.dart';

Problema createProblemAges(MyAppLocalizations localizations , int? dificultad) {
  Random random = Random();
  int tipo;
  switch(dificultad){
    case 0:
      tipo = random.nextInt(2) + 1;
      break;
    case 1:
      tipo = random.nextInt(4) + 1;
      break;
    default:
      tipo = random.nextInt(6) + 1;
      break;
  }
  Problema problema;
  switch(tipo){
    case 1:
      problema = createProblemAges1(localizations.statementAge1, localizations.solutionAge1, dificultad);
      break;
    case 2:
      problema = createProblemAges1(localizations.statementAge1, localizations.solutionAge1, dificultad);
      break;
    case 3:
      problema = createProblemAges1(localizations.statementAge1, localizations.solutionAge1, dificultad);
      break;
    case 4:
      problema = createProblemAges1(localizations.statementAge1, localizations.solutionAge1, dificultad);
      break;
    case 5:
      problema = createProblemAges1(localizations.statementAge1, localizations.solutionAge1, dificultad);
      break;
    default:
      problema = createProblemAges1(localizations.statementAge1, localizations.solutionAge1, dificultad);
      break;
  }
  return problema;
}

String getStatementAges1(String enunciado, int a, int b, int c, int d, int e, int f){
  return enunciado.replaceAll("_a_", a.toString())
    .replaceAll("_b_", b.toString())
    .replaceAll("_c_", c.toString())
    .replaceAll("_d_", d.toString())
    .replaceAll("_e_", e.toString())
    .replaceAll("_f_", f.toString());
}
String getSolutionAge1(String solucion, int a, int b, int c, int d, int e, int f, int x){
  return solucion.replaceAll("_a_", a.toString())
    .replaceAll("_b_", b.toString())
    .replaceAll("_c_", c.toString())
    .replaceAll("_d_", d.toString())
    .replaceAll("_e_", e.toString())
    .replaceAll("_f_", f.toString())
    .replaceAll("_x_", x.toString())
    .replaceAll("_a.b_", (a*b).toString())
    .replaceAll("_c.d_", (c*d).toString())
    .replaceAll("_(a-c)_", (a-c).toString())
    .replaceAll("_(a.b+c.d)_", (a*b+c*d).toString())
    .replaceAll("_f-x_", (f-x).toString());
}
List<int> getAlternatives(int respuesta){
  Random random = Random();
  List<int> alternativas = [];
  alternativas.add(respuesta);
  for (int i = 0; i < 3; i++) {
    int alternativa = random.nextInt(2) == 0 
      ? respuesta + random.nextInt(5) + 1 
      : respuesta - random.nextInt(2) - 1;
    while (alternativas.contains(alternativa)) {
      alternativa = random.nextInt(2) == 0 
      ? respuesta + random.nextInt(5) + 1 
      : respuesta - random.nextInt(2) - 1;
    }
    alternativas.add(alternativa);
  }
  alternativas.shuffle();
  return alternativas;
}
Problema createProblemAges1(String enunciado , String solucion, int? dificultad) {
  Random random = Random();
  int x = random.nextInt(31) + 20 + dificultad!*5;
  int a = random.nextInt(5) + 4 + dificultad*5;
  int b = random.nextInt(14) + 2 ;
  int c = random.nextInt(2) + 2  + dificultad*5;
  int d = random.nextInt(14) + 2;
  int e = a*(x+b)-c*(x-d);
  int f = x + random.nextInt(20) + 2;
  enunciado = getStatementAges1(enunciado, a, b, c, d, e, f);
  int respuesta = f-x;
  solucion = getSolutionAge1(solucion, a, b, c, d, e, f, x);
  List<int> alternativas = getAlternatives(respuesta);
  int clave = alternativas.indexOf(respuesta);
  return  Problema(enunciado, alternativas, clave, solucion);
}
