import 'dart:math';
import 'package:raz_mat/models/problema.dart';
import 'package:raz_mat/viewmodels/providers.dart';
import 'my_words.dart';

Problema createProblemProbability(MyWords myWords , DataModel dataModel) {
  Random random = Random();
  int tipo = random.nextInt(4) + 1;
  dataModel.tipo = tipo;
  Problema problema;
  switch(tipo){
    case 1:
      problema = createProblemProbability1(myWords.statementProbability1, myWords.solutionProbability1, dataModel.difficulty);
      break;
    case 2:
      problema = createProblemProbability2(myWords.statementProbability2, myWords.solutionProbability2, dataModel.difficulty);
      break;
    case 3:
      problema = createProblemProbability3(myWords.statementProbability3, myWords.solutionProbability3, dataModel.difficulty);
      break;
    default:
      problema = createProblemProbability4(myWords.statementProbability4, myWords.solutionProbability4, dataModel.difficulty);
      break;
  }
  return problema;
}
String getStatementProbability1(String enunciado, int totalCasos, int numEventosA, int numEventosB, int interseccion){
  return enunciado.replaceAll("totalCasos", '$totalCasos')
    .replaceAll("numEventosA", '$numEventosA')
    .replaceAll("numEventosB", '$numEventosB')
    .replaceAll("interseccion", '$interseccion');
}
String getSolutionProbability1(String solucion, int totalCasos, int numEventosA, int numEventosB, int interseccion, String respuesta){
  return solucion.replaceAll("totalCasos", '$totalCasos')
    .replaceAll("numEventosA", '$numEventosA')
    .replaceAll("numEventosB", '$numEventosB')
    .replaceAll("interseccion", '$interseccion')
    .replaceAll("_P(A U B)_", respuesta);
}
String getStatementProbability2(String enunciado, int totalCasos, int numEventosA, int numEventosB){
  return enunciado.replaceAll("totalCasos", '$totalCasos')
    .replaceAll("numEventosA", '$numEventosA')
    .replaceAll("numEventosB", '$numEventosB');
}
String getSolutionProbability2(String solucion, int totalCasos, int numEventosA, int numEventosB, String respuesta){
  return solucion.replaceAll("totalCasos", '$totalCasos')
    .replaceAll("numEventosA", '$numEventosA')
    .replaceAll("numEventosB", '$numEventosB')
    .replaceAll("_P(A ∩ B)_", respuesta);
}
String getStatementProbability3(String enunciado, int numEventosA, int interseccion){
  return enunciado.replaceAll("numEventosA", '$numEventosA')
    .replaceAll("interseccion", '$interseccion');
}
String getSolutionProbability3(String solucion, int numEventosA, int interseccion, String respuesta){
  return solucion.replaceAll("numEventosA", '$numEventosA')
    .replaceAll("interseccion", '$interseccion')
    .replaceAll("_P(B|A)_", respuesta);
}
String getStatementProbability4(String enunciado, int totalCasos, int numEventosA, int numEventosB, int numEventosBA){
  return enunciado.replaceAll("totalCasos", '$totalCasos')
    .replaceAll("numEventosA", '$numEventosA')
    .replaceAll("numEventosB_", '$numEventosB')
    .replaceAll("numEventosBA", '$numEventosBA');
}
String getSolutionProbability4(String solucion, int totalCasos, int numEventosA, int numEventosB, int numEventosBA, String respuesta){
  return solucion.replaceAll("totalCasos", '$totalCasos')
    .replaceAll("numEventosA", '$numEventosA')
    .replaceAll("numEventosB_", '$numEventosB')
    .replaceAll("numEventosBA", '$numEventosBA')
    .replaceAll("_P(A|B)_", respuesta);
}
List<String> getAlternatives(String respuesta){
  List<String> alternativas = [];
  alternativas.add(respuesta);
  for (int i = 0; i < 3; i++) {
    double alternativa = Random().nextInt(101) / 100.0;
    while (alternativas.contains('$alternativa')) {
      alternativa = Random().nextInt(101) / 100.0;
    }
    alternativas.add('$alternativa');
  }
  alternativas.shuffle();
  return alternativas;
}
Problema createProblemProbability1(String enunciado , String solucion, int? dificultad) {
  int numEventosA = Random().nextInt(20) + 1 + 10*dificultad!;
  int numEventosB = Random().nextInt(20) + 1 + 10*dificultad;
  int maxEventosPosibles = numEventosA + numEventosB;
  int interseccion = Random().nextInt(min(numEventosA, numEventosB)) + 1;
  int totalCasos = Random().nextInt(10+dificultad*10) + maxEventosPosibles - interseccion;
  enunciado = getStatementProbability1(enunciado, totalCasos, numEventosA, numEventosB, interseccion);
  String respuesta = ((numEventosA + numEventosB - interseccion) / totalCasos).toStringAsFixed(2);
  solucion = getSolutionProbability1(solucion, totalCasos, numEventosA, numEventosB, interseccion, respuesta);
  List<String> alternativas = getAlternatives(respuesta);
  int clave = alternativas.indexOf(respuesta);
  return  Problema(enunciado, alternativas, clave, solucion);
}
Problema createProblemProbability2(String enunciado , String solucion, int? dificultad) {
  int numEventosA = Random().nextInt(5) + 10 + 10*dificultad!;
  int numEventosB = Random().nextInt(5) + 10 + 10*dificultad;
  int maxEventosPosibles = numEventosA + numEventosB;
  int interseccion = Random().nextInt(min(numEventosA, numEventosB)) + 1;
  int totalCasos = Random().nextInt(5+dificultad) + maxEventosPosibles - interseccion;
  enunciado = getStatementProbability2(enunciado, totalCasos, numEventosA, numEventosB);
  String respuesta = ((numEventosA / totalCasos) * (numEventosB / totalCasos)).toStringAsFixed(2);
  solucion = getSolutionProbability2(solucion, totalCasos, numEventosA, numEventosB, respuesta);
  List<String> alternativas = getAlternatives(respuesta);
  int clave = alternativas.indexOf(respuesta);
  return  Problema(enunciado, alternativas, clave, solucion);
}
Problema createProblemProbability3(String enunciado , String solucion, int? dificultad) {
  int numEventosA = Random().nextInt(20) + 3 + 10*dificultad!;
  int interseccion = Random().nextInt(numEventosA-3) + 1;
  enunciado = getStatementProbability3(enunciado, numEventosA, interseccion);
  String respuesta = (interseccion/numEventosA).toStringAsFixed(2);
  solucion = getSolutionProbability3(solucion, numEventosA, interseccion, respuesta);
  List<String> alternativas = getAlternatives(respuesta);
  int clave = alternativas.indexOf(respuesta);
  return  Problema(enunciado, alternativas, clave, solucion);
}
Problema createProblemProbability4(String enunciado , String solucion, int? dificultad) {
  int numEventosA = Random().nextInt(20) + 1 + 10*dificultad!;
  int numEventosB = Random().nextInt(20) + 1 + 10*dificultad;
  int maxEventosPosibles = numEventosA + numEventosB;
  int numEventosBA = Random().nextInt(numEventosB)+1;
int interseccion = Random().nextInt(min(numEventosA, numEventosB)) + 1;
  int totalCasos = Random().nextInt(10+dificultad*10) + maxEventosPosibles - interseccion;
  enunciado = getStatementProbability4(enunciado, totalCasos, numEventosA, numEventosB, numEventosBA);
  String respuesta = ((numEventosBA * numEventosA) / (totalCasos * numEventosB)).toStringAsFixed(2);
  solucion = getSolutionProbability4(solucion, totalCasos, numEventosA, numEventosB, numEventosBA, respuesta);
  List<String> alternativas = getAlternatives(respuesta);
  int clave = alternativas.indexOf(respuesta);
  return  Problema(enunciado, alternativas, clave, solucion);
}