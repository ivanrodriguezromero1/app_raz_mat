import 'package:flutter/material.dart';
import 'package:raz_mat/viewmodels/topics/ages/solution_age1.dart';
import 'package:raz_mat/viewmodels/topics/ages/solution_age2.dart';
import 'package:raz_mat/viewmodels/topics/ages/solution_age3.dart';
import 'package:raz_mat/viewmodels/topics/ages/solution_age4.dart';
import 'package:raz_mat/viewmodels/topics/ages/statement_age1.dart';
import 'package:raz_mat/viewmodels/topics/ages/statement_age2.dart';
import 'package:raz_mat/viewmodels/topics/ages/statement_age3.dart';
import 'package:raz_mat/viewmodels/topics/ages/statement_age4.dart';
import 'package:raz_mat/viewmodels/topics/chrono/solution_chrono1.dart';
import 'package:raz_mat/viewmodels/topics/chrono/solution_chrono2.dart';
import 'package:raz_mat/viewmodels/topics/chrono/solution_chrono3.dart';
import 'package:raz_mat/viewmodels/topics/chrono/solution_chrono4.dart';
import 'package:raz_mat/viewmodels/topics/chrono/statement_chrono1.dart';
import 'package:raz_mat/viewmodels/topics/chrono/statement_chrono2.dart';
import 'package:raz_mat/viewmodels/topics/chrono/statement_chrono3.dart';
import 'package:raz_mat/viewmodels/topics/chrono/statement_chrono4.dart';
import 'package:raz_mat/viewmodels/topics/moving/solution_moving1.dart';
import 'package:raz_mat/viewmodels/topics/moving/solution_moving2.dart';
import 'package:raz_mat/viewmodels/topics/moving/solution_moving3.dart';
import 'package:raz_mat/viewmodels/topics/moving/solution_moving4.dart';
import 'package:raz_mat/viewmodels/topics/moving/statement_moving1.dart';
import 'package:raz_mat/viewmodels/topics/moving/statement_moving2.dart';
import 'package:raz_mat/viewmodels/topics/moving/statement_moving3.dart';
import 'package:raz_mat/viewmodels/topics/moving/statement_moving4.dart';
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
      'statementMoving1': statementMoving1Es,
      'statementMoving2': statementMoving2Es, 
      'statementMoving3': statementMoving3Es,
      'statementMoving4': statementMoving4Es,
      'solutionMoving1': solutionMoving1Es,
      'solutionMoving2': solutionMoving2Es,
      'solutionMoving3': solutionMoving3Es,
      'solutionMoving4': solutionMoving4Es,
      'statementChrono1': statementChrono1Es,
      'statementChrono2': statementChrono2Es,
      'statementChrono3': statementChrono3Es,
      'statementChrono4': statementChrono4Es,
      'solutionChrono1': solutionChrono1Es,
      'solutionChrono2': solutionChrono2Es,
      'solutionChrono3': solutionChrono3Es,
      'solutionChrono4': solutionChrono4Es,
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
      'statementMoving1': statementMoving1En,
      'statementMoving2': statementMoving2En,
      'statementMoving3': statementMoving3En,
      'statementMoving4': statementMoving4En,
      'solutionMoving1': solutionMoving1En,
      'solutionMoving2': solutionMoving2En,
      'solutionMoving3': solutionMoving3En,
      'solutionMoving4': solutionMoving4En,
      'statementChrono1': statementChrono1En,
      'statementChrono2': statementChrono2En,
      'statementChrono3': statementChrono3En,
      'statementChrono4': statementChrono4En,
      'solutionChrono1': solutionChrono1En,
      'solutionChrono2': solutionChrono2En,
      'solutionChrono3': solutionChrono3En,
      'solutionChrono4': solutionChrono4En,
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
