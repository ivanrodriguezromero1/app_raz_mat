import 'dart:math';
import 'package:raz_mat/models/problema.dart';
import 'package:raz_mat/viewmodels/providers.dart';
import 'my_words.dart';

Problema createProblemChrono(MyWords myWords, DataModel dataModel) {
  Random random = Random();
  int tipo = random.nextInt(4) + 1;
  dataModel.tipo = tipo;
  Problema problema;
  switch(tipo){
    case 1:
      problema = createProblemChrono1(myWords.statementChrono1, myWords.solutionChrono1, dataModel.difficulty);
      break;
    case 2:
      problema = createProblemChrono2(myWords.statementChrono2, myWords.solutionChrono2, dataModel.difficulty);
      break;
    case 3:
      problema = createProblemChrono3(myWords.statementChrono3, myWords.solutionChrono3, dataModel.difficulty);
      break;
    default:
      problema = createProblemChrono4(myWords.statementChrono4, myWords.solutionChrono4, dataModel.difficulty);
      break;
  }
  return problema;
}
String getStatementChrono1(String enunciado, int h, int m){
  return enunciado.replaceAll("_h_", '$h')
    .replaceAll("_m_", (m<10)?'0$m':'$m');
}
String getSolutionChrono1(String solucion, int h, int m, int a){
  return solucion.replaceAll("_h_", h.toString())
    .replaceAll("_m_", m.toString())
    .replaceAll("_30*h_", (30*h).toString())
    .replaceAll("_[11/2]*m_", ((5.5*m).toInt()).toString())
    .replaceAll("_30*h-[11/2]*m_", ((30*h-5.5*m).toInt()).toString())
    .replaceAll("_a_", a.toString());
}
String getStatementChrono2(String enunciado, int h, int a){
  return enunciado.replaceAll("_h_", '$h')
    .replaceAll("_a_", '$a');
}
String getSolutionChrono2(String solucion, int h, int a, int m){
  return solucion.replaceAll("_h_", h.toString())
    .replaceAll("_a_", a.toString())
    .replaceAll("_30*h_", (30*h).toString())
    .replaceAll("_30*h-a_", (30*h-a).toString())
    .replaceAll("_m_", m.toString());
}
String getStatementChrono3(String enunciado, int h, int a){
  return enunciado.replaceAll("_h_", '$h')
    .replaceAll("_a_", '$a');
}
String getSolutionChrono3(String solucion, int h, int a, int m){
  return solucion.replaceAll("_h_", h.toString())
    .replaceAll("_a_", a.toString())
    .replaceAll("_30*h_", (30*h).toString())
    .replaceAll("_30*h+a_", (30*h+a).toString())
    .replaceAll("_m_", m.toString());
}
String getStatementChrono4(String enunciado, int c1, int t1, int t2){
  return enunciado.replaceAll("_c1_", '$c1')
    .replaceAll("_t1_", '$t1')
    .replaceAll("_t2_", '$t2');
}
String getSolutionChrono4(String solucion, int c1, int t1, int t2, int c2){
  return solucion.replaceAll("_c1_", c1.toString())
    .replaceAll("_t1_", t1.toString())
    .replaceAll("_t2_", t2.toString())
    .replaceAll("_c1-1_", (c1-1).toString())
    .replaceAll("_c2-1_", (c2-1).toString())
    .replaceAll("_c2_", c2.toString());
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
Problema createProblemChrono1(String enunciado , String solucion, int? dificultad) {
  Random random = Random();
  int m = 2*random.nextInt(25) + 2 + dificultad!*4;
  int h = random.nextInt(7) + 1 + dificultad*2;
  int a = (30*h-(11)*(m~/2)).abs();
  enunciado = getStatementChrono1(enunciado, h, m);
  int respuesta = a;
  solucion = getSolutionChrono1(solucion, h, m, a);
  List<String> alternativas = getAlternatives('$respuesta');
  int clave = alternativas.indexOf('$respuesta');
  return  Problema(enunciado, alternativas, clave, solucion);
}
Problema createProblemChrono2(String enunciado , String solucion, int? dificultad) {
  Random random = Random();
  int h = random.nextInt(7) + 1 + dificultad!*2;
  int m = 2*random.nextInt(((5*h)~/2)-1) + 2;
  int a = 30*h-(11)*(m~/2);
  enunciado = getStatementChrono2(enunciado, h, a);
  int respuesta = m;
  solucion = getSolutionChrono2(solucion, h, a, m);
  List<String> alternativas = getAlternatives('$respuesta');
  int clave = alternativas.indexOf('$respuesta');
  return  Problema(enunciado, alternativas, clave, solucion);
}
Problema createProblemChrono3(String enunciado , String solucion, int? dificultad) {
  Random random = Random();
  int h = random.nextInt(4) + 1 + dificultad!*2;
  int m = 6*h+2*random.nextInt(3) + 2 + dificultad*2;
  int a = (11)*(m~/2)-30*h;
  enunciado = getStatementChrono3(enunciado, h, a);
  int respuesta = m;
  solucion = getSolutionChrono3(solucion, h, a, m);
  List<String> alternativas = getAlternatives('$respuesta');
  int clave = alternativas.indexOf('$respuesta');
  return  Problema(enunciado, alternativas, clave, solucion);
}
Problema createProblemChrono4(String enunciado , String solucion, int? dificultad) {
  Random random = Random();
  int t1 = random.nextInt(8) + 1 + dificultad!;
  int k = random.nextInt(3)+1;
  int c1 = random.nextInt(4) + 2 + dificultad;
  int c2 = (c1-1)*k+1;
  int t2 = k*t1;
  enunciado = getStatementChrono4(enunciado, c1, t1, t2);
  int respuesta = c2;
  solucion = getSolutionChrono4(solucion, c1, t1, t2, c2);
  List<String> alternativas = getAlternatives('$respuesta');
  int clave = alternativas.indexOf('$respuesta');
  return  Problema(enunciado, alternativas, clave, solucion);
}