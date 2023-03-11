import 'dart:math';
import 'package:raz_mat/models/problema.dart';

Problema createProblemAges(String enunciado , int? dificultad) {
  Random random = Random();
  int x = random.nextInt(31) + 20 + dificultad!*5;
  int a = random.nextInt(5) + 4 + dificultad*5;
  int b = random.nextInt(14) + 2 ;
  int c = random.nextInt(2) + 2  + dificultad*5;
  int d = random.nextInt(14) + 2;
  int e = a*(x+b)-c*(x-d);
  int f = x + random.nextInt(20)+2;
  enunciado = enunciado.replaceAll("_a_", a.toString())
                        .replaceAll("_b_", b.toString())
                        .replaceAll("_c_", c.toString())
                        .replaceAll("_d_", d.toString())
                        .replaceAll("_e_", e.toString())
                        .replaceAll("_f_", f.toString()); 
  int respuesta = f-x;
  String solucion = "  x-$d --- x --- x+$b \r\n\n $a.(x+$b)-$c(x-$d)=$e \r\n\n $a.x+${a*b}-$c.x+${c*d}=$e \r\n\n ${a-c}.x+${a*b+c*d}=$e \r\n\n x=$x \r\n\n $f-$x = ${f-x}";

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
  int clave = alternativas.indexOf(respuesta);
  return  Problema(enunciado, alternativas, clave, solucion);
}
