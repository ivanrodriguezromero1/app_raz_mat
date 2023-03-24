import 'package:flutter/material.dart';
import 'package:raz_mat/viewmodels/topics/ages/solution_age1.dart';
import 'package:raz_mat/viewmodels/topics/ages/solution_age2.dart';
import 'package:raz_mat/viewmodels/topics/ages/solution_age3.dart';
import 'package:raz_mat/viewmodels/topics/ages/solution_age4.dart';
import 'package:raz_mat/viewmodels/topics/ages/statement_age1.dart';
import 'package:raz_mat/viewmodels/topics/ages/statement_age2.dart';
import 'package:raz_mat/viewmodels/topics/ages/statement_age3.dart';
import 'package:raz_mat/viewmodels/topics/ages/statement_age4.dart';
import 'package:raz_mat/viewmodels/topics/series/solution_serie_nth1.dart';
import 'package:raz_mat/viewmodels/topics/series/solution_serie_nth2.dart';
import 'package:raz_mat/viewmodels/topics/series/solution_serie_nth3.dart';
import 'package:raz_mat/viewmodels/topics/series/solution_serie_sum1.dart';
import 'package:raz_mat/viewmodels/topics/series/solution_serie_sum2.dart';
import 'package:raz_mat/viewmodels/topics/series/solution_serie_sum3.dart';
import 'package:raz_mat/viewmodels/topics/series/statement_serie_nth.dart';
import 'package:raz_mat/viewmodels/topics/series/statement_serie_sum.dart';

class MyAppLocalizations {
  MyAppLocalizations(this.locale);

  final Locale locale;

  static MyAppLocalizations of(BuildContext context) {
    return Localizations.of<MyAppLocalizations>(context, MyAppLocalizations)!;
  }

  static final Map<String, Map<String, String>> _localizedValues = {
    'es': {
      'title': 'Razonamiento Matemático',
      'problems':'Problemas',
      'settings': 'Opciones',
      'topic1':'Series',
      'topic2':'Edades',
      'topic3':'Móviles',
      'topic4':'Cronometría',
      'topic5':'Conteo',
      'difficulty':'Dificultad',
      'easy': 'Fácil',
      'normal':'Normal',
      'hard':'Difícil',
      'disconnected':'No hay conexión a internet',
      'close': 'Cerrar',
      'tip':'Consejo',
      'check': 'COMPROBAR',
      'newProblem': 'NUEVO',
      'solution':'VER SOLUCION',
      'answer':'La respuesta es',
      'titleSolution':'SOLUCION',
      'statementSerieNth': statementSerieNthEs,
      'statementSerieSum': statementSerieSumEs,
      'solutionSerieNth1': solutionSerieNth1Es,
      'solutionSerieSum1': solutionSerieSum1Es,
      'solutionSerieNth2': solutionSerieNth2Es,
      'solutionSerieSum2': solutionSerieSum2Es,
      'solutionSerieNth3': solutionSerieNth3Es,
      'solutionSerieSum3': solutionSerieSum3Es,
      
      'tipSerieNth1': ' Serie aritmética de primer grado: \r\n\n Término enésimo: \r\n  aₙ = a₁ + (n-1).r \r\n\n a₁ : Primer término \r\n r : Razón aritmética \r\n n : Número de término',
      'tipSerieSum1':' Serie aritmética de primer grado: \r\n Suma de términos: \r\n  Sₙ = a₁.n + [(n-1).n.r]/2 \r\n\n a₁ : Primer término \r\n r : Razón aritmética \r\n n : Número de términos',
      'tipSerieNth2': ' Serie aritmética de segundo grado: \r\n Término enésimo: \r\n  aₙ = a₁ + (n-1).r₁ + [(n-1)(n-2).r₂]/2 \r\n\n a₁ : Primer término \r\n r₁ : Primera razón aritmética \r\n r₂ : Segunda razón aritmética \r\n n : Número de término',
      'tipSerieSum2':' Serie aritmética de segundo grado: \r\n Suma de términos: \r\n  Sₙ = a₁.n + [(n-1).n.r₁]/2 +\r\n   [(n-2)(n-1).n.r₂]/6 \r\n\n a₁ : Primer término \r\n r₁ : Primera razón aritmética \r\n r₂ : Segunda razón aritmética \r\n n : Número de términos',
      'tipSerieNth3': ' Serie aritmética de tercer grado: \r\n Término enésimo: \r\n  aₙ = a₁ + (n-1).r₁ + [(n-1)(n-2).r₂]/2 +\r\n   [(n-1)(n-2)(n-3).r₃]/6 \r\n\n a₁ : Primer término \r\n r₁ : Primera razón aritmética \r\n r₂ : Segunda razón aritmética \r\n r₃ : Tercera razón aritmética \r\n n : Número de término',
      'tipSerieSum3':' Serie aritmética de tercer grado: \r\n Suma de términos: \r\n  Sₙ = a₁.n + [(n-1).n.r₁]/2 +\r\n   [(n-2)(n-1).n.r₂]/6 +\r\n   [(n-3)(n-2)(n-1).n.r₃]/24 \r\n\n a₁ : Primer término \r\n r₁ : Primera razón aritmética \r\n r₂ : Segunda razón aritmética \r\n r₃ : Tercera razón aritmética \r\n n : Número de términos',
      
      'statementAge1': statementAge1Es,
      'statementAge2': statementAge2Es,
      'statementAge3': statementAge3Es,
      'statementAge4': statementAge4Es,
      'solutionAge1': solutionAge1Es,
      'solutionAge2': solutionAge2Es,  
      'solutionAge3': solutionAge3Es,
      'solutionAge4': solutionAge4Es,
      'statementMoving1': 'Dos móviles parten simultáneamente al encuentro. Si están separados por _a_ metros, y su velocidades son de _b_ m/s y de _c_ m/s, ¿Después de cuántos segundos se encontrarán?',
      'statementMoving2': 'Un móvil de velocidad _b_ m/s sigue a otro de velocidad _c_ m/s, si ambos van en el mismo sentido y están separados inicialmente por _a_ metros , ¿En qué tiempo logra alcanzarlo? ', 
      'statementMoving3': 'Un móvil de _a_ metros pasa a través de un túnel. Si el móvil tiene una velocidad de _b_ m/s, y demora _t_ segundos en cruzar el túnel, ¿Cuánto es la longitud de dicho túnel?',
      'statementMoving4': 'Un móvil recorre dos tramos, el primero a una velocidad de _b_ m/s y el segundo a _c_ m/s. Si el recorrido total fue de _a_ metros y el tiempo total _t_ segundos, ¿Cuánto tiempo duró el recorrido en el segundo tramo?',
      'solutionMoving1': ' Velocidad del Móvil 1: \r\n  V₁ = _b_ m/s \r\n Velocidad del Móvil 2: \r\n  V₂ = _c_ m/s \r\n Distancia: _a_ m \r\n\n Tiempo de encuentro: \r\n T = Distancia/[V₁ + V₂] \r\n T = _a_/[_b_ + _c_] \r\n T = _a_/_[b+c]_ \r\n T = _t_ \r\n\n Respuesta: _t_ segundos ',
      'solutionMoving2': ' Velocidad del Móvil 1: \r\n  V₁ = _b_ m/s \r\n Velocidad del Móvil 2: \r\n  V₂ = _c_ m/s \r\n Distancia: _a_ m \r\n\n Tiempo de alcance: \r\n T = Distancia/[V₁ - V₂] \r\n T = _a_/[_b_ - _c_] \r\n T = _a_/_[b-c]_ \r\n T = _t_ \r\n\n Respuesta: _t_ segundos ',
      'solutionMoving3': ' Velocidad del Móvil: \r\n  V = _b_ m/s \r\n Longitud del Móvil: \r\n  L = _a_ m \r\n Tiempo para cruzar el túnel: \r\n  T = _t_ s \r\n Longitud del túnel: X \r\n Longitud total recorrida: \r\n  L + X = V.T \r\n  X = V.T - L \r\n  X = (_b_)(_t_) - _a_ \r\n  X = _b*t_ - _a_ \r\n  X = _x_ \r\n\n Respuesta: _x_ metros',
      'solutionMoving4': ' Velocidad en el primer tramo: \r\n  V₁ = _b_ m/s \r\n Velocidad en el segundo tramo: \r\n  V₂ = _c_ m/s \r\n Tiempo en el primer tramo: T₁ \r\n Tiempo en el segundo tramo: T₂ \r\n Tiempo total: \r\n  T = _t_ = T₁ + T₂ \r\n Recorrido total: \r\n  L = _a_ = V₁.T₁ + V₂.T₂ \r\n\n Reemplazando: \r\n _a_ =  (_b_)T₁ + (_c_)T₂ \r\n _a_ =  (_b_)(_t_ - T₂) + (_c_)T₂ \r\n (_c_ - _b_)T₂ = _a_ - (_b_)(_t_) \r\n (_c-b_)T₂ = _a_ - _b*t_ \r\n (_c-b_)T₂ = _a-b*t_ \r\n T₂ = _t2_ \r\n Respuesta: _t2_ segundos ',
      'statementChrono1': '¿Qué ángulo en grados forman el horario y el minutero a las _h_:_m_?',
      'statementChrono2': '¿Cuántos minutos después de las _h_ en punto deben pasar, para que el ángulo entre el horario y el minutero sea _a_ grados por primera vez?',
      'statementChrono3': '¿Cuántos minutos después de las _h_ en punto deben pasar, para que el ángulo entre el horario y el minutero sea _a_ grados por segunda vez?',
      'statementChrono4': 'Un reloj que indica la hora por campanadas, demora _t1_ segundos en dar _c1_ campanadas. ¿Cuántas campanadas dará en _t2_ segundos?',
      'solutionChrono1': ' Hora: \r\n  H = _h_ \r\n Minutos: \r\n  M = _m_ \r\n Se sabe que: α = |30.H - [11/2].M| grados \r\n α = |30(_h_) - [11/2](_m_)| \r\n α = |_30*h_ - _[11/2]*m_| \r\n α = |_30*h-[11/2]*m_| \r\n α = _a_ \r\n Respuesta: _a_ grados',      
      'solutionChrono2': ' Hora: \r\n  H = _h_ \r\n Ángulo: \r\n  α = _a_ grados \r\n Se sabe que: \r\n α = 30.H - [11/2].M grados \r\n _a_ = 30(_h_) - [11/2].M \r\n _a_ = _30*h_ - [11/2].M \r\n [11/2].M = _30*h_ - _a_ \r\n [11/2].M = _30*h-a_ \r\n M = _m_ \r\n Respuesta: _m_ minutos',
      'solutionChrono3': ' Hora: \r\n  H = _h_ \r\n Ángulo: \r\n  α = _a_ grados \r\n Se sabe que: \r\n α = [11/2].M - 30.H grados \r\n _a_ = [11/2].M - 30(_h_) \r\n _a_ = [11/2].M - _30*h_ \r\n [11/2].M = _30*h_ + _a_ \r\n [11/2].M = _30*h+a_ \r\n M = _m_ \r\n Respuesta: _m_ minutos',
      'solutionChrono4': ' Caso 1: \r\n  Número de campanadas: \r\n   C₁ = _c1_ \r\n  Tiempo para dar las campanadas: \r\n   T₁ = _t1_ \r\n Caso 2: \r\n  Número de campanadas: C₂ \r\n  Tiempo para dar las campanadas: \r\n   T₂ = _t2_ \r\n\n Se sabe que: \r\n T₁/[C₁-1] = T₂/[C₂-1] \r\n C₂= [T₂.(C₁-1)/T₁] + 1 \r\n C₂= [(_t2_)(_c1_ - 1)/_t1_] + 1 \r\n C₂ = [(_t2_)(_c1-1_)/_t1_] + 1 \r\n C₂ = _c2_ \r\n Respuesta: _c2_ campanadas',      
    },
    'en': {
      'title': 'Mathematical Reasoning',
      'settings': 'Settings',
      'problems':'Problems',
      'topic1':'Series',
      'topic2':'Ages',
      'topic3':'Moving',
      'topic4':'Chronometry',
      'topic5':'Counting',
      'difficulty':'Difficulty',
      'easy': 'Easy',
      'normal':'Normal',
      'hard':'Hard',
      'disconnected':'There is no internet connection',
      'close': 'Close',
      'tip':'Tip',
      'check': 'CHECK',
      'newProblem': 'NEW',
      'solution':'SEE SOLUTION',
      'answer':'The answer is',
      'titleSolution':'SOLUTION',
      'statementSerieNth': statementSerieNthEn,
      'statementSerieSum': statementSerieSumEn,
      'solutionSerieNth1': solutionSerieNth1En,
      'solutionSerieSum1': solutionSerieSum1En,
      'solutionSerieNth2': solutionSerieNth2En,
      'solutionSerieSum2': solutionSerieSum2En,
      'solutionSerieNth3': solutionSerieNth3En,
      'solutionSerieSum3': solutionSerieSum3En,
      
      'tipSerieNth1': ' First-degree arithmetic series: \r\n N-th term: \r\n  aₙ = a₁ + (n-1). r \r\n\n a₁ : First term \r\n r : Arithmetic ratio \r\n n : Number of terms',
      'tipSerieSum1':' First-degree arithmetic series: \r\n Sum of terms: \r\n  Sₙ = a₁.n + [(n-1).n.r]/2 \r\n\n a₁ : First term \r\n r : Arithmetic ratio \r\n n : Number of terms',
      'tipSerieNth2': 'Quadratic arithmetic series: \r\n Nth term: \r\n  aₙ = a₁ + (n-1).r₁ + [(n-1)(n-2).r₂]/2 \r\n\n a₁ : First term \r\n r₁ : First arithmetic ratio \r\n r₂ : Second arithmetic ratio \r\n n : Number of terms',
      'tipSerieSum2':' Quadratic arithmetic series: \r\n Sum of terms: \r\n  Sₙ = a₁n + [(n-1)nr₁]/2 +\r\n   [(n-2)(n-1)nr₂]/6 \r\n\n a₁ : First term \r\n r₁ : First arithmetic ratio \r\n r₂ : Second arithmetic ratio \r\n n : Number of terms',
      'tipSerieNth3': ' Third degree arithmetic series: \r\n Nth term: \r\n  aₙ = a₁ + (n-1)r₁ + [(n-1)(n-2)r₂]/2 +\r\n   [(n-1)(n-2)(n-3)r₃]/6 \r\n\n a₁ : First term \r\n r₁ : First arithmetic ratio \r\n r₂ : Second arithmetic ratio \r\n r₃ : Third arithmetic ratio \r\n n : Number of term',
      'tipSerieSum3':' Third degree arithmetic series: \r\n Sum of terms: \r\n  Sₙ = a₁.n + [(n-1).n.r₁]/2 +\r\n   [(n-2)(n-1).n.r₂]/6 +\r\n   [(n-3)(n-2)(n-1).n.r₃]/24 \r\n\n a₁ : First term \r\n r₁ : First arithmetic ratio \r\n r₂ : Second arithmetic ratio \r\n r₃ : Third arithmetic ratio \r\n n : Number of terms',
      
      'statementAge1': statementAge1En,
      'statementAge2': statementAge2En,
      'statementAge3': statementAge3En,
      'statementAge4': statementAge4En,
      'solutionAge1': solutionAge1En ,
      'solutionAge2': solutionAge2En,
      'solutionAge3': solutionAge3En,
      'solutionAge4': solutionAge4En,
      'statementMoving1': 'Two mobiles start moving simultaneously towards each other. If they are separated by _a_ meters and their velocities are _b_ m/s and _c_ m/s respectively, after how many seconds will they meet?',
      'statementMoving2': 'A mobile with velocity of _b_ m/s is following another mobile with velocity of _c_ m/s, if both are traveling in the same direction and initially separated by _a_ meters, at what time will the first mobile catch up with the second one?',
      'statementMoving3': 'A mobile of _a_ meters passes through a tunnel. If the mobile has a velocity of _b_ m/s and takes _t_ seconds to cross the tunnel, what is the length of the tunnel?',
      'statementMoving4': 'A mobile travels through two sections, the first at a speed of _b_ m/s and the second at _c_ m/s. If the total distance traveled was _a_ meters and the total time was _t_ seconds, how long did the journey last in the second section?',
      'solutionMoving1': ' Velocity of Mobile 1: \r\n V₁ = _b_ m/s \r\n Velocity of Mobile 2: \r\n V₂ = _c_ m/s \r\n Distance: _a_ m \r\n\n Time of meeting: \r\n T = Distance/[V₁ + V₂] \r\n T = _a_/[_b_ + _c_] \r\n T = _a_/_[b+c]_ \r\n T = _t_ \r\n\n Answer: _t_ seconds',      
      'solutionMoving2': ' Velocity of Mobile 1: \r\n V₁ = _b_ m/s \r\n Velocity of Mobile 2: \r\n V₂ = _c_ m/s \r\n Distance: _a_ m \r\n\n Time of catching up: \r\n T = Distance/[V₁ - V₂] \r\n T = _a_/[_b_ - _c_] \r\n T = _a_/_[b-c]_ \r\n T = _t_ \r\n\n Answer: _t_ seconds',      
      'solutionMoving3': ' Velocity of the mobile: \r\n V = _b_ m/s \r\n Length of the mobile: \r\n L = _a_ m \r\n Time to cross the tunnel: \r\n T = _t_ s \r\n Length of the tunnel: X \r\n Total distance traveled: \r\n L + X = V.T \r\n X = V.T - L \r\n X = (_b_)(_t_) - _a_ \r\n X = _b*t_ - _a_ \r\n X = _x_ \r\n\n Answer: _x_ meters',      
      'solutionMoving4': ' Velocity in the first segment: \r\n V₁ = _b_ m/s \r\n Velocity in the second segment: \r\n V₂ = _c_ m/s \r\n Time in the first segment: T₁ \r\n Time in the second segment: T₂ \r\n Total time: \r\n T = _t_ = T₁ + T₂ \r\n Total distance: \r\n L = _a_ = V₁.T₁ + V₂.T₂ \r\n\n Replacing: \r\n _a_ = (_b_)T₁ + (_c_)T₂ \r\n _a_ = (_b_)(_t_ - T₂) + (_c_)T₂ \r\n (_c_ - _b_)T₂ = _a_ - (_b_)(_t_) \r\n (_c-b_)T₂ = _a_ - _b*t_ \r\n (_c-b_)T₂ = _a-b*t_ \r\n T₂ = _t2_ \r\n Answer: _t2_ seconds',
      'statementChrono1': 'What is the angle in degrees between the hour and minute hands in _h_:_m_?',
      'statementChrono2': "How many minutes past _h_ o'clock must elapse for the angle between the hour hand and the minute hand to be _a_ degrees for the first time?",
      'statementChrono3': "How many minutes past _h_ o'clock must elapse for the angle between the hour hand and the minute hand to be _a_ degrees for the second time?",
      'statementChrono4': 'An clock that indicates the time by chimes, takes _t1_ seconds to chime _c1_ times. How many chimes will it make in _t2_ seconds?',
      'solutionChrono1': ' Hour: \r\n H = _h_ \r\n Minutes: \r\n M = _m_ \r\n It is known that: α = |30.H - [11/2].M| degrees \r\n α = |30(_h_) - [11/2](_m_)| \r\n α = |_30*h_ - _[11/2]*m_| \r\n α = |_30*h-[11/2]*m_| \r\n α = _a_ \r\n Answer: _a_ degrees',      
      'solutionChrono2': ' Hour: \r\n H = _h_ \r\n Angle: \r\n α = _a_ degrees \r\n We know that: \r\n α = 30.H - [11/2].M degrees \r\n _a_ = 30(_h_) - [11/2].M \r\n _a_ = _30*h_ - [11/2].M \r\n [11/2].M = _30*h_ - _a_ \r\n [11/2].M = _30*h-a_ \r\n M = _m_ \r\n Answer: _m_ minutes',
      'solutionChrono3': ' Hour: \r\n  H = h \r\n Angle: \r\n  α = _a_ degrees \r\n It is known that: \r\n α = [11/2].M - 30.H degrees \r\n _a_ = [11/2].M - 30(_h_) \r\n _a_ = [11/2].M - _30*h_ \r\n [11/2].M = _30*h_ + _a_ \r\n [11/2].M = _30*h+a_ \r\n M = _m_ \r\n Answer: _m_ minutes',
      'solutionChrono4': ' Case 1: \r\n  Number of bells: \r\n   C₁ = _c1_ \r\n  Time the bells: \r\n   T₁ = _t1_ \r\n Case 2: \r\n  Number of bells: C₂ \r\n  Time the bells: \r\n   T₂ = _t2_ \r\n\n We know that: \r\n T₁/[C₁-1] = T₂/[C₂-1] \r\n C₂= [T₂.(C₁-1)/T₁] + 1 \r\n C₂= [(_t2_)(_c1_ - 1)/_t1_] + 1 \r\n C₂ = [(_t2_)(_c1-1_)/_t1_] + 1 \r\n C₂ = _c2_ \r\n Answer: _c2_ bells',
    },
  };

  String get title {
    return _localizedValues[locale.languageCode]!['title']!;
  }
  String get settings {
    return _localizedValues[locale.languageCode]!['settings']!;
  }
  String get problems {
    return _localizedValues[locale.languageCode]!['problems']!;
  }
  String get topic1 {
    return _localizedValues[locale.languageCode]!['topic1']!;
  }
  String get topic2 {
    return _localizedValues[locale.languageCode]!['topic2']!;
  }
  String get topic3 {
    return _localizedValues[locale.languageCode]!['topic3']!;
  }
  String get topic4 {
    return _localizedValues[locale.languageCode]!['topic4']!;
  }
  String get topic5 {
    return _localizedValues[locale.languageCode]!['topic5']!;
  }  
  String get easy {
    return _localizedValues[locale.languageCode]!['easy']!;
  }
  String get normal {
    return _localizedValues[locale.languageCode]!['normal']!;
  }
  String get hard {
    return _localizedValues[locale.languageCode]!['hard']!;
  }
  String get difficulty {
    return _localizedValues[locale.languageCode]!['difficulty']!;
  }
  String get disconnected {
    return _localizedValues[locale.languageCode]!['disconnected']!;
  }
  String get close {
    return _localizedValues[locale.languageCode]!['close']!;
  }
  String get statementSerieNth {
    return _localizedValues[locale.languageCode]!['statementSerieNth']!;
  }
  String get statementSerieSum {
    return _localizedValues[locale.languageCode]!['statementSerieSum']!;
  }
  String get check {
    return _localizedValues[locale.languageCode]!['check']!;
  }
  String get newProblem {
    return _localizedValues[locale.languageCode]!['newProblem']!;
  }
  String get solution {
    return _localizedValues[locale.languageCode]!['solution']!;
  }
  String get answer {
    return _localizedValues[locale.languageCode]!['answer']!;
  }
  String get titleSolution {
    return _localizedValues[locale.languageCode]!['titleSolution']!;
  }
  String get solutionSerieNth1 {
    return _localizedValues[locale.languageCode]!['solutionSerieNth1']!;
  }
  String get solutionSerieSum1 {
    return _localizedValues[locale.languageCode]!['solutionSerieSum1']!;
  }
  String get solutionSerieNth2 {
    return _localizedValues[locale.languageCode]!['solutionSerieNth2']!;
  }
  String get solutionSerieSum2 {
    return _localizedValues[locale.languageCode]!['solutionSerieSum2']!;
  }
  String get solutionSerieNth3 {
    return _localizedValues[locale.languageCode]!['solutionSerieNth3']!;
  }
  String get solutionSerieSum3 {
    return _localizedValues[locale.languageCode]!['solutionSerieSum3']!;
  }
    String get tipSerieNth1 {
    return _localizedValues[locale.languageCode]!['tipSerieNth1']!;
  }
  String get tipSerieSum1 {
    return _localizedValues[locale.languageCode]!['tipSerieSum1']!;
  }
  String get tipSerieNth2 {
    return _localizedValues[locale.languageCode]!['tipSerieNth2']!;
  }
  String get tipSerieSum2 {
    return _localizedValues[locale.languageCode]!['tipSerieSum2']!;
  }
  String get tipSerieNth3 {
    return _localizedValues[locale.languageCode]!['tipSerieNth3']!;
  }
  String get tipSerieSum3 {
    return _localizedValues[locale.languageCode]!['tipSerieSum3']!;
  }
  String get statementAge1 {
    return _localizedValues[locale.languageCode]!['statementAge1']!;
  }
  String get solutionAge1 {
    return _localizedValues[locale.languageCode]!['solutionAge1']!;
  }
  String get statementAge2 {
    return _localizedValues[locale.languageCode]!['statementAge2']!;
  }
  String get solutionAge2 {
    return _localizedValues[locale.languageCode]!['solutionAge2']!;
  }
  String get statementAge3 {
    return _localizedValues[locale.languageCode]!['statementAge3']!;
  }
  String get solutionAge3 {
    return _localizedValues[locale.languageCode]!['solutionAge3']!;
  }
  String get statementAge4 {
    return _localizedValues[locale.languageCode]!['statementAge4']!;
  }
  String get solutionAge4 {
    return _localizedValues[locale.languageCode]!['solutionAge4']!;
  }
  String get statementMoving1 {
    return _localizedValues[locale.languageCode]!['statementMoving1']!;
  }
  String get solutionMoving1 {
    return _localizedValues[locale.languageCode]!['solutionMoving1']!;
  }
  String get statementMoving2 {
    return _localizedValues[locale.languageCode]!['statementMoving2']!;
  }
  String get solutionMoving2 {
    return _localizedValues[locale.languageCode]!['solutionMoving2']!;
  }
  String get statementMoving3 {
    return _localizedValues[locale.languageCode]!['statementMoving3']!;
  }
  String get solutionMoving3 {
    return _localizedValues[locale.languageCode]!['solutionMoving3']!;
  }
  String get statementMoving4 {
    return _localizedValues[locale.languageCode]!['statementMoving4']!;
  }
  String get solutionMoving4 {
    return _localizedValues[locale.languageCode]!['solutionMoving4']!;
  }
  String get statementChrono1 {
    return _localizedValues[locale.languageCode]!['statementChrono1']!;
  }
  String get solutionChrono1 {
    return _localizedValues[locale.languageCode]!['solutionChrono1']!;
  }
  String get statementChrono2 {
    return _localizedValues[locale.languageCode]!['statementChrono2']!;
  }
  String get solutionChrono2 {
    return _localizedValues[locale.languageCode]!['solutionChrono2']!;
  }
  String get statementChrono3 {
    return _localizedValues[locale.languageCode]!['statementChrono3']!;
  }
  String get solutionChrono3 {
    return _localizedValues[locale.languageCode]!['solutionChrono3']!;
  }
  String get statementChrono4 {
    return _localizedValues[locale.languageCode]!['statementChrono4']!;
  }
  String get solutionChrono4 {
    return _localizedValues[locale.languageCode]!['solutionChrono4']!;
  }
  String get tip {
    return _localizedValues[locale.languageCode]!['tip']!;
  }
  Future<bool> load() async {
    return true;
  }
}

class MyAppLocalizationsDelegate extends LocalizationsDelegate<MyAppLocalizations> {
  const MyAppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['es', 'en'].contains(locale.languageCode);

  @override
  Future<MyAppLocalizations> load(Locale locale) async {
    MyAppLocalizations localizations = MyAppLocalizations(locale);
    await localizations.load();
    return localizations;
  }

  @override
  bool shouldReload(MyAppLocalizationsDelegate old) => false;
}
