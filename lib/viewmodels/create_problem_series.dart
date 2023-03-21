import 'dart:math';
import 'package:raz_mat/models/problema.dart';
import 'my_app_localizations.dart';

Problema createProblemSeries(MyAppLocalizations localizations , int? dificultad) {
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
      problema = createProblemSeriesNth1(localizations.statementSerieNth, localizations.solutionSerieNth1, dificultad);
      break;
    case 2:
      problema = createProblemSeriesSum1(localizations.statementSerieSum, localizations.solutionSerieSum1, dificultad);
      break;
    case 3:
      problema = createProblemSeriesNth2(localizations.statementSerieNth, localizations.solutionSerieNth2, dificultad);
      break;
    case 4:
      problema = createProblemSeriesSum2(localizations.statementSerieSum, localizations.solutionSerieSum2, dificultad);
      break;
    case 5:
      problema = createProblemSeriesNth3(localizations.statementSerieNth, localizations.solutionSerieNth3, dificultad);
      break;
    default:
      problema = createProblemSeriesSum3(localizations.statementSerieSum, localizations.solutionSerieSum3, dificultad);
      break;
  }
  return problema;
}
String getStatementSeries(String enunciado, int n, String serie){
  return enunciado.replaceAll("_n_", n.toString())
    .replaceAll("_serie_", serie);
}
String getSolutionNth1(String solucion, String serie, int a, int r, int n, int an){
  return solucion.replaceAll("_serie_", serie)
    .replaceAll("_a_", a.toString())
    .replaceAll("_r_", r.toString())
    .replaceAll("_n_", n.toString())
    .replaceAll("_n-1_", (n-1).toString())
    .replaceAll("_(n-1)*r_",((n-1)*r).toString())
    .replaceAll("_an_", an.toString());
}
String getSolutionSum1(String solucion, String serie, int a, int r, int n, int sn){
  return solucion.replaceAll("_serie_", serie)
    .replaceAll("_a_", a.toString())
    .replaceAll("_r_", r.toString())
    .replaceAll("_n_", n.toString())
    .replaceAll("_a*n_", (a*n).toString())
    .replaceAll("_n-1_", (n-1).toString())
    .replaceAll("_[(n-1)*n*r]/2_", (((n-1)*n*r)~/2).toString())
    .replaceAll("_sn_", sn.toString());
}
String getSolutionNth2(String solucion, String serie, int a, int r1, int r2, int n, int an){
  return solucion.replaceAll("_serie_", serie)
    .replaceAll("_a_", a.toString())
    .replaceAll("_r1_", r1.toString())
    .replaceAll("_r2_", r2.toString())
    .replaceAll("_n_", n.toString())
    .replaceAll("_n-1_", (n-1).toString())
    .replaceAll("_n-2_", (n-2).toString())
    .replaceAll("_(n-1)*r1_",((n-1)*r1).toString())
    .replaceAll("_[(n-1)*(n-2)*r2]/2_", (((n-1)*(n-2)*r2)~/2).toString())
    .replaceAll("_an_", an.toString());
}
String getSolutionSum2(String solucion, String serie, int a, int r1, int r2, int n, int sn){
  return solucion.replaceAll("_serie_", serie)
    .replaceAll("_a_", a.toString())
    .replaceAll("_r1_", r1.toString())
    .replaceAll("_r2_", r2.toString())
    .replaceAll("_n_", n.toString())
    .replaceAll("_a*n_", (a*n).toString())
    .replaceAll("_n-1_", (n-1).toString())
    .replaceAll("_n-2_", (n-2).toString())
    .replaceAll("_[(n-1)*n*r1]/2_", (((n-1)*n*r1)~/2).toString())
    .replaceAll("_[(n-2)*(n-1)*n*r2]/6_", (((n-2)*(n-1)*n*r2)~/6).toString())
    .replaceAll("_sn_", sn.toString());
}
String getSolutionNth3(String solucion, String serie, int a, int r1, int r2, int r3, int n, int an){
  return solucion.replaceAll("_serie_", serie)
    .replaceAll("_a_", a.toString())
    .replaceAll("_r1_", r1.toString())
    .replaceAll("_r2_", r2.toString())
    .replaceAll("_r3_", r3.toString())
    .replaceAll("_n_", n.toString())
    .replaceAll("_n-1_", (n-1).toString())
    .replaceAll("_n-2_", (n-2).toString())
    .replaceAll("_n-3_", (n-3).toString())
    .replaceAll("_(n-1)*r1_",((n-1)*r1).toString())
    .replaceAll("_[(n-1)*(n-2)*r2]/2_", (((n-1)*(n-2)*r2)~/2).toString())
    .replaceAll("_[(n-1)*(n-2)*(n-3)*r3]/6_", (((n-1)*(n-2)*(n-3)*r3)~/6).toString())
    .replaceAll("_an_", an.toString());
}
String getSolutionSum3(String solucion, String serie, int a, int r1, int r2, int r3, int n, int sn){
  return solucion.replaceAll("_serie_", serie)
    .replaceAll("_a_", a.toString())
    .replaceAll("_r1_", r1.toString())
    .replaceAll("_r2_", r2.toString())
    .replaceAll("_r3_", r3.toString())
    .replaceAll("_n_", n.toString())
    .replaceAll("_a*n_", (a*n).toString())
    .replaceAll("_n-1_", (n-1).toString())
    .replaceAll("_n-2_", (n-2).toString())
    .replaceAll("_n-3_", (n-3).toString())
    .replaceAll("_[(n-1)*n*r1]/2_", (((n-1)*n*r1)~/2).toString())
    .replaceAll("_[(n-2)*(n-1)*n*r2]/6_", (((n-2)*(n-1)*n*r2)~/6).toString())
    .replaceAll("_[(n-3)*(n-2)*(n-1)*n*r3]/24_", (((n-3)*(n-2)*(n-1)*n*r3)~/24).toString())
    .replaceAll("_sn_", sn.toString());
}
List<int> getAlternatives(int respuesta){
  Random random = Random();
  List<int> alternativas = [];
  alternativas.add(respuesta);
  for (int i = 0; i < 3; i++) {
    int alternativa = random.nextInt(2) == 0 
      ? respuesta + random.nextInt(5) + 1 
      : respuesta - random.nextInt(3) - 1;
    while (alternativas.contains(alternativa)) {
      alternativa = random.nextInt(2) == 0 
      ? respuesta + random.nextInt(5) + 1 
      : respuesta - random.nextInt(3) - 1;
    }
    alternativas.add(alternativa);
  }
  alternativas.shuffle();
  return alternativas;
}
Problema createProblemSeriesNth1(String enunciado, String solucion, int? dificultad) {
  Random random = Random();
  int a = random.nextInt(8) + 1;
  int r = random.nextInt(8) + 2;
  int n = (dificultad!+1)*5 + random.nextInt(5);
  int an = a + (n-1)*r;
  String serie = "$a, ${a+r}, ${a+2*r}, ...";
  enunciado = getStatementSeries(enunciado, n, serie);
  int respuesta = an;
  solucion = getSolutionNth1(solucion, serie, a, r, n, an);
  List<int> alternativas = getAlternatives(respuesta);
  int clave = alternativas.indexOf(respuesta);
  return  Problema(enunciado, alternativas, clave, solucion);
}
Problema createProblemSeriesSum1(String enunciado, String solucion, int? dificultad) {
  Random random = Random();
  int a = random.nextInt(8) + 1;
  int r = random.nextInt(8) + 2;
  int n = (dificultad!+1)*5 + random.nextInt(5);
  int sn = a*n + (n-1)*n*r~/2;
  String serie = "$a, ${a+r}, ${a+2*r}, ...";
  enunciado = getStatementSeries(enunciado, n, serie);
  int respuesta = sn;
  solucion = getSolutionSum1(solucion, serie, a, r, n, sn);
  List<int> alternativas = getAlternatives(respuesta);
  int clave = alternativas.indexOf(respuesta);
  return  Problema(enunciado, alternativas, clave, solucion);
}
Problema createProblemSeriesNth2(String enunciado, String solucion, int? dificultad) {
  Random random = Random();
  int a = random.nextInt(8) + 1;
  int r1 = random.nextInt(8) + 2;
  int r2 = random.nextInt(8) + 1;
  int n = (dificultad! + 1) * 6 + random.nextInt(6);
  int an = a + (n-1)*r1 + (n-1)*(n-2)*r2~/2;
  String serie = "$a, ${a + r1}, ${a + 2 * r1 + r2}, ${a + 3 * r1 + 3 * r2}, ...";
  enunciado = getStatementSeries(enunciado, n, serie);
  int respuesta = an;
  solucion = getSolutionNth2(solucion, serie, a, r1, r2, n, an);
  List<int> alternativas = getAlternatives(respuesta);
  int clave = alternativas.indexOf(respuesta);
  return Problema(enunciado, alternativas, clave, solucion);
}
Problema createProblemSeriesSum2(String enunciado, String solucion, int? dificultad) {
  Random random = Random();
  int a = random.nextInt(8) + 1;
  int r1 = random.nextInt(8) + 2;
  int r2 = random.nextInt(8) + 1;
  int n = (dificultad! + 1) * 6 + random.nextInt(6);
  int sn = a*n + ((n-1)*n*r1)~/2 + ((n-2)*(n-1)*n*r2)~/6;
  String serie = "$a, ${a + r1}, ${a + 2 * r1 + r2}, ${a + 3 * r1 + 3 * r2}, ...";
  enunciado = getStatementSeries(enunciado, n, serie);
  int respuesta = sn;
  solucion = getSolutionSum2(solucion, serie, a, r1, r2, n, sn);
  List<int> alternativas = getAlternatives(respuesta);
  int clave = alternativas.indexOf(respuesta);
  return Problema(enunciado, alternativas, clave, solucion);
}
Problema createProblemSeriesNth3(String enunciado, String solucion, int? dificultad) {
  Random random = Random();
  int a = random.nextInt(8) + 1;
  int r1 = random.nextInt(8) + 2;
  int r2 = random.nextInt(8) + 2;
  int r3 = random.nextInt(8) + 1;
  int n = (dificultad! + 1) * 7 + random.nextInt(7);
  int an = a + (n-1)*r1 + (n-1)*(n-2)*r2~/2  + (n-1)*(n-2)*(n-3)*r3~/6;
  String serie = "$a, ${a + r1}, ${a + 2 * r1 + r2}, ${a + 3 * r1 + 3 * r2 + r3}, ${a + 4 * r1 + 6 * r2 + 4 * r3}, ...";
  enunciado = getStatementSeries(enunciado, n, serie);
  int respuesta = an;
  solucion = getSolutionNth3(solucion, serie, a, r1, r2, r3, n, an);
  List<int> alternativas = getAlternatives(respuesta);
  int clave = alternativas.indexOf(respuesta);
  return Problema(enunciado, alternativas, clave, solucion);
}
Problema createProblemSeriesSum3(String enunciado, String solucion, int? dificultad) {
  Random random = Random();
  int a = random.nextInt(8) + 1;
  int r1 = random.nextInt(8) + 2;
  int r2 = random.nextInt(8) + 2;
  int r3 = random.nextInt(8) + 1;
  int n = (dificultad! + 1) * 7 + random.nextInt(7);
  int sn = a*n + ((n-1)*n*r1)~/2 + ((n-2)*(n-1)*n*r2)~/6 + ((n-3)*(n-2)*(n-1)*n*r3)~/24;
  String serie = "$a, ${a + r1}, ${a + 2 * r1 + r2}, ${a + 3 * r1 + 3 * r2 + r3}, ${a + 4 * r1 + 6 * r2 + 4 * r3}, ...";
  enunciado = getStatementSeries(enunciado, n, serie);
  int respuesta = sn;
  solucion = getSolutionSum3(solucion, serie, a, r1, r2, r3, n, sn);
  List<int> alternativas = getAlternatives(respuesta);
  int clave = alternativas.indexOf(respuesta);
  return Problema(enunciado, alternativas, clave, solucion);
}