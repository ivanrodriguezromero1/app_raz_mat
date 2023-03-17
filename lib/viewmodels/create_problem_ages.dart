import 'dart:math';
import 'package:raz_mat/models/problema.dart';
import 'my_app_localizations.dart';

Problema createProblemAges(MyAppLocalizations localizations , int? dificultad) {
  Random random = Random();
  int tipo = random.nextInt(4) + 1;
  Problema problema;
  switch(tipo){
    case 1:
      problema = createProblemAges1(localizations.statementAge1, localizations.solutionAge1, dificultad);
      break;
    case 2:
      problema = createProblemAges2(localizations.statementAge2, localizations.solutionAge2, dificultad);
      break;
    case 3:
      problema = createProblemAges3(localizations.statementAge3, localizations.solutionAge3, dificultad);
      break;
    default:
      problema = createProblemAges4(localizations.statementAge4, localizations.solutionAge4, dificultad);
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
String getStatementAges2(String enunciado, int a, int b, int c, int d){
  return enunciado.replaceAll("_a_", a.toString())
    .replaceAll("_b_", b.toString())
    .replaceAll("_c_", c.toString())
    .replaceAll("_d_", d.toString());
}
String getSolutionAge2(String solucion, int a, int b, int c, int d, int x){
  return solucion.replaceAll("_a_", a.toString())
    .replaceAll("_b_", b.toString())
    .replaceAll("_c_", c.toString())
    .replaceAll("_d_", d.toString())
    .replaceAll("_c.d_", (c*d).toString())
    .replaceAll("_(c-a)_", (c-a).toString())
    .replaceAll("_c.d+b_", (c*d+b).toString())
    .replaceAll("_x_", x.toString())
    .replaceAll("_a.x_", (a*x).toString());
}
String getStatementAges3(String enunciado, int a, int b, int c){
  return enunciado.replaceAll("_a_", a.toString())
    .replaceAll("_b_", b.toString())
    .replaceAll("_c_", c.toString());
}
String getSolutionAge3(String solucion, int a, int b, int c, int x){
  return solucion.replaceAll("_a_", a.toString())
    .replaceAll("_b_", b.toString())
    .replaceAll("_c_", c.toString())
    .replaceAll("_c.b_", (c*b).toString())
    .replaceAll("_a-c.b_", (a-c*b).toString())
    .replaceAll("_(c-1)_", (c-1).toString())
    .replaceAll("_x_", x.toString());
}
String getStatementAges4(String enunciado, int a, int b, int c){
  return enunciado.replaceAll("_a_", a.toString())
    .replaceAll("_b_", b.toString())
    .replaceAll("_c_", c.toString());
}
String getSolutionAge4(String solucion, int a, int b, int c, int x){
  return solucion.replaceAll("_a_", a.toString())
    .replaceAll("_b_", b.toString())
    .replaceAll("_c_", c.toString())
    .replaceAll("_b-a_", (b-a).toString())
    .replaceAll("_c+a-b_", (c+a-b).toString())
    .replaceAll("_x_", x.toString())
    .replaceAll("_2022-b-x_", (2022-b-x).toString());
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
Problema createProblemAges2(String enunciado , String solucion, int? dificultad) {
  Random random = Random();
  int x = random.nextInt(11) + 10 + dificultad!*2;
  int a = random.nextInt(3) + 2;
  int d = random.nextInt(8) + 2;
  int c = 2+ ((a*x)~/(x-d))  + dificultad*2;
  int b = c*(x-d)-a*x;
  enunciado = getStatementAges2(enunciado, a, b, c, d);
  int respuesta = a*x;
  solucion = getSolutionAge2(solucion, a, b, c, d, x);
  List<int> alternativas = getAlternatives(respuesta);
  int clave = alternativas.indexOf(respuesta);
  return  Problema(enunciado, alternativas, clave, solucion);
}
Problema createProblemAges3(String enunciado , String solucion, int? dificultad) {
  Random random = Random();
  int b = random.nextInt(13) + 5;
  int c = random.nextInt(3) + 2 + 2*dificultad!;
  int x = random.nextInt(20) + 1;
  int a = c*b+(c-1)*x;
  enunciado = getStatementAges3(enunciado, a, b, c);
  int respuesta = x;
  solucion = getSolutionAge3(solucion, a, b, c, x);
  List<int> alternativas = getAlternatives(respuesta);
  int clave = alternativas.indexOf(respuesta);
  return  Problema(enunciado, alternativas, clave, solucion);
}
Problema createProblemAges4(String enunciado , String solucion, int? dificultad) {
  Random random = Random();
  int a = random.nextInt(21) + 10;
  int b = random.nextInt(10) + a + 2 + 5*dificultad!;
  int x = random.nextInt(15) + 1;
  int c = b+2*x-a;
  enunciado = getStatementAges4(enunciado, a, b, c);
  int respuesta = 2022-b-x;
  solucion = getSolutionAge4(solucion, a, b, c, x);
  List<int> alternativas = getAlternatives(respuesta);
  int clave = alternativas.indexOf(respuesta);
  return  Problema(enunciado, alternativas, clave, solucion);
}