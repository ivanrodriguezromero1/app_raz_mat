import 'dart:math';
import 'package:raz_mat/models/problema.dart';
import 'package:raz_mat/viewmodels/providers.dart';
import 'my_words.dart';

Problema createProblemMoving(MyWords myWords , DataModel dataModel) {
  Random random = Random();
  int tipo = random.nextInt(4) + 1;
  dataModel.tipo = tipo;
  Problema problema;
  switch(tipo){
    case 1:
      problema = createProblemMoving1(myWords.statementMoving1, myWords.solutionMoving1, dataModel.difficulty);
      break;
    case 2:
      problema = createProblemMoving2(myWords.statementMoving2, myWords.solutionMoving2, dataModel.difficulty);
      break;
    case 3:
      problema = createProblemMoving3(myWords.statementMoving3, myWords.solutionMoving3, dataModel.difficulty);
      break;
    default:
      problema = createProblemMoving4(myWords.statementMoving4, myWords.solutionMoving4, dataModel.difficulty);
      break;
  }
  return problema;
}
String getStatementMoving1(String enunciado, int a, int b, int c){
  return enunciado.replaceAll("_a_", a.toString())
    .replaceAll("_b_", b.toString())
    .replaceAll("_c_", c.toString());
}
String getSolutionMoving1(String solucion, int a, int b, int c, int t){
  return solucion.replaceAll("_a_", a.toString())
    .replaceAll("_b_", b.toString())
    .replaceAll("_c_", c.toString())
    .replaceAll("_[b+c]_", (b+c).toString())
    .replaceAll("_t_", t.toString());
}
String getStatementMoving2(String enunciado, int a, int b, int c){
  return enunciado.replaceAll("_a_", a.toString())
    .replaceAll("_b_", b.toString())
    .replaceAll("_c_", c.toString());
}
String getSolutionMoving2(String solucion, int a, int b, int c, int t){
  return solucion.replaceAll("_a_", a.toString())
    .replaceAll("_b_", b.toString())
    .replaceAll("_c_", c.toString())
    .replaceAll("_[b-c]_", (b-c).toString())
    .replaceAll("_t_", t.toString());
}
String getStatementMoving3(String enunciado, int a, int b, int t){
  return enunciado.replaceAll("_a_", a.toString())
    .replaceAll("_b_", b.toString())
    .replaceAll("_t_", t.toString());
}
String getSolutionMoving3(String solucion, int a, int b, int t, int x){
  return solucion.replaceAll("_a_", a.toString())
    .replaceAll("_b_", b.toString())
    .replaceAll("_t_", t.toString())
    .replaceAll("_b*t_", (b*t).toString())
    .replaceAll("_x_", x.toString());
}
String getStatementMoving4(String enunciado, int a, int b, int c, int t){
  return enunciado.replaceAll("_a_", a.toString())
    .replaceAll("_b_", b.toString())
    .replaceAll("_c_", c.toString())
    .replaceAll("_t_", t.toString());
}
String getSolutionMoving4(String solucion, int a, int b, int c, int t, int t2){
  return solucion.replaceAll("_a_", a.toString())
    .replaceAll("_b_", b.toString())
    .replaceAll("_c_", c.toString())
    .replaceAll("_t_", t.toString())
    .replaceAll("_c-b_", (c-b).toString())
    .replaceAll("_b*t_", (b*t).toString())
    .replaceAll("_a-b*t_", (a-b*t).toString())
    .replaceAll("_t2_", t2.toString());
}
List<String> getAlternatives(String respuesta){
  int rpta = int.parse(respuesta);
  Random random = Random();
  List<String> alternativas = [];
  alternativas.add(respuesta);
  for (int i = 0; i < 3; i++) {
    int alternativa = random.nextInt(2) == 0 
      ? rpta + random.nextInt(5) + 1 
      : rpta - random.nextInt(2) - 1;
    while (alternativas.contains('$alternativa')) {
      alternativa = random.nextInt(2) == 0 
      ? rpta + random.nextInt(5) + 1 
      : rpta - random.nextInt(2) - 1;
    }
    alternativas.add('$alternativa');
  }
  alternativas.shuffle();
  return alternativas;
}
Problema createProblemMoving1(String enunciado , String solucion, int? dificultad) {
  Random random = Random();
  int b = random.nextInt(30) + 1 + dificultad!*20;
  int c = random.nextInt(30) + 1 + dificultad*20;
  int t = random.nextInt(30) + 5 ;
  int a = (b+c)*t;
  enunciado = getStatementMoving1(enunciado, a, b, c);
  int respuesta = t;
  solucion = getSolutionMoving1(solucion, a, b, c, t);
  List<String> alternativas = getAlternatives('$respuesta');
  int clave = alternativas.indexOf('$respuesta');
  return  Problema(enunciado, alternativas, clave, solucion);
}
Problema createProblemMoving2(String enunciado , String solucion, int? dificultad) {
  Random random = Random();
  int c = random.nextInt(30) + 1 + dificultad!*20;
  int b = random.nextInt(30) + c + 1 + dificultad*20;
  int t = random.nextInt(30) + 5 ;
  int a = (b-c)*t;
  enunciado = getStatementMoving2(enunciado, a, b, c);
  int respuesta = t;
  solucion = getSolutionMoving2(solucion, a, b, c, t);
  List<String> alternativas = getAlternatives('$respuesta');
  int clave = alternativas.indexOf('$respuesta');
  return  Problema(enunciado, alternativas, clave, solucion);
}
Problema createProblemMoving3(String enunciado , String solucion, int? dificultad) {
  Random random = Random();
  int b = random.nextInt(30) + 3 + dificultad!*10;
  int t = random.nextInt(30) + 6 + dificultad*10;
  int a = random.nextInt(b*t-15)+5;
  int x = b*t-a;
  enunciado = getStatementMoving3(enunciado, a, b, t);
  int respuesta = x;
  solucion = getSolutionMoving3(solucion, a, b, t, x);
  List<String> alternativas = getAlternatives('$respuesta');
  int clave = alternativas.indexOf('$respuesta');
  return  Problema(enunciado, alternativas, clave, solucion);
}
Problema createProblemMoving4(String enunciado , String solucion, int? dificultad) {
  Random random = Random();
  int b = random.nextInt(30) + 3 + dificultad!*10;
  int c = random.nextInt(30) + b + 1 + dificultad*5;
  int t2 = random.nextInt(30) + 5 + dificultad*10;
  int t = random.nextInt(30) + t2 + 1 + dificultad*5;
  int a = (c-b)*t2+b*t;
  enunciado = getStatementMoving4(enunciado, a, b, c, t);
  int respuesta = t2;
  solucion = getSolutionMoving4(solucion, a, b, c, t, t2);
  List<String> alternativas = getAlternatives('$respuesta');
  int clave = alternativas.indexOf('$respuesta');
  return  Problema(enunciado, alternativas, clave, solucion);
}