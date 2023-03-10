import 'dart:math';
import 'package:raz_mat/models/problema.dart';

import 'models/tipo.dart';

Problema createProblemSeries(Tipo series , int? dificultad) {
  Random random = Random();
  int grado;
  switch(dificultad){
    case 0:
      grado = 1;
      break;
    case 1:
      grado = random.nextInt(2) + 1;
      break;
    default:
      grado = random.nextInt(3) + 1;
      break;
  }
  Problema problema;
  switch(grado){
    case 1:
      problema = createProblemFirstGradeSeries(series ,dificultad);
      break;
    case 2:
      problema = createProblemSecondGradeSeries(series ,dificultad);
      break;
    default:
      problema = createProblemThirdGradeSeries(series ,dificultad);
      break;
  }
  return problema;
}
Problema createProblemFirstGradeSeries(Tipo series , int? dificultad) {
  Random random = Random();
  int a = random.nextInt(8) + 1;
  int r = random.nextInt(8) + 2;
  int n = (dificultad!+1)*5 + random.nextInt(5);
  int an = a + (n-1)*r;
  int suma = a*n + (n-1)*n*r~/2;
  String serie = "$a, ${a+r}, ${a+2*r}, ...";
  String enunciado = series.enunciado.replaceAll("_n_", n.toString())
                            .replaceAll("_serie_", serie);
  // Calcula la respuesta correcta y las alternativas para despistar al usuario
  List<int> respuestas = [an, suma];
  int respuesta = respuestas[series.tipo];
  List<String> soluciones = [
   " $serie \r\n\n a₁=$a \r\n r=$r \r\n n=$n \r\n aₙ = a₁ + (n-1).r \r\n\n aₙ = $a + ($n-1).$r \r\n\n aₙ = $an",
   " $serie \r\n\n a₁=$a \r\n r=$r \r\n n=$n \r\n Sₙ = a₁.n + [(n-1).n.r]/2 \r\n\n Sₙ = $a.$n + [($n-1).$n.$r]/2 \r\n\n Sₙ = $suma",
   ];
  String solucion = soluciones[series.tipo];
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
  int clave = alternativas.indexOf(respuesta);
  return  Problema(enunciado, alternativas, clave, solucion);
}
Problema createProblemSecondGradeSeries(Tipo series, int? dificultad) {
  Random random = Random();
  int a = random.nextInt(8) + 1;
  int r1 = random.nextInt(8) + 2;
  int r2 = random.nextInt(8) + 1;
  int n = (dificultad! + 1) * 6 + random.nextInt(6);
  int an = a + (n-1)*r1 + (n-1)*(n-2)*r2~/2;
  int suma = a*n + ((n-1)*n*r1)~/2 + ((n-2)*(n-1)*n*r2)~/6;
  String serie = "$a, ${a + r1}, ${a + 2 * r1 + r2}, ${a + 3 * r1 + 3 * r2}, ...";
  String enunciado = series.enunciado
      .replaceAll("_n_", n.toString())
      .replaceAll("_serie_", serie);
  // Calcula la respuesta correcta y las alternativas para despistar al usuario
  List<int> respuestas = [an, suma];
  int respuesta = respuestas[series.tipo];
  List<String> soluciones = [
    " $serie \r\n\n a₁=$a \r\n r₁=$r1 \r\n r₂=$r2 \r\n n=$n \r\n\n aₙ =a₁ + (n-1).r₁ + [(n-1).(n-2).r₂]/2 \r\n\n aₙ =$a + ($n-1).$r1 + [($n-1).($n-2).$r2]/2 \r\n\n aₙ = $an",
    " $serie \r\n\n a₁=$a \r\n r₁=$r1 \r\n r₂=$r2 \r\n n=$n \r\n\n Sₙ = a₁.n + [(n-1).n.r₁]/2 + [(n-2).(n-1).n.r₂]/6 \r\n\n Sₙ = $a.$n + [($n-1).$n.$r1]/2 + [($n-2).($n-1).$n.$r2]/6 \r\n\n Sₙ = $suma",
  ];
  String solucion = soluciones[series.tipo];
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
  int clave = alternativas.indexOf(respuesta);
  return Problema(enunciado, alternativas, clave, solucion);
}
Problema createProblemThirdGradeSeries(Tipo series, int? dificultad) {
  Random random = Random();
  int a = random.nextInt(8) + 1;
  int r1 = random.nextInt(8) + 2;
  int r2 = random.nextInt(8) + 2;
  int r3 = random.nextInt(8) + 1;
  int n = (dificultad! + 1) * 7 + random.nextInt(7);
  int an = a + (n-1)*r1 + (n-1)*(n-2)*r2~/2  + (n-1)*(n-2)*(n-3)*r3~/6;
  int suma = a*n + ((n-1)*n*r1)~/2 + ((n-2)*(n-1)*n*r2)~/6 + ((n-3)*(n-2)*(n-1)*n*r3)~/24;
  String serie = "$a, ${a + r1}, ${a + 2 * r1 + r2}, ${a + 3 * r1 + 3 * r2 + r3}, ${a + 4 * r1 + 6 * r2 + 4 * r3}, ...";
  String enunciado = series.enunciado
      .replaceAll("_n_", n.toString())
      .replaceAll("_serie_", serie);
  // Calcula la respuesta correcta y las alternativas para despistar al usuario
  List<int> respuestas = [an, suma];
  int respuesta = respuestas[series.tipo];
  List<String> soluciones = [
    " $serie \r\n\n a₁=$a \r\n r₁=$r1 \r\n r₂=$r2 \r\n n=$n \r\n\n aₙ =a₁ + (n-1).r₁ + [(n-1).(n-2).r₂]/2 + [(n-1).(n-2).(n-3).r₃]/6 \r\n\n aₙ =$a + ($n-1).$r1 + [($n-1).($n-2).$r2]/2 + [($n-1).($n-2).($n-3).$r3]/6 \r\n\n aₙ = $an",
    " $serie \r\n\n a₁=$a \r\n r₁=$r1 \r\n r₂=$r2 \r\n n=$n \r\n\n Sₙ = a₁.n + [(n-1).n.r₁]/2 + [(n-2).(n-1).n.r₂]/6 + [(n-3).(n-2).(n-1).n.r₃]/24 \r\n\n Sₙ = $a.$n + [($n-1).$n.$r1]/2 + [($n-2).($n-1).$n.$r2]/6 + [($n-3).($n-2).($n-1).$n.$r3]/24 \r\n\n Sₙ = $suma",
  ];
  String solucion = soluciones[series.tipo];
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
  int clave = alternativas.indexOf(respuesta);
  return Problema(enunciado, alternativas, clave, solucion);
}