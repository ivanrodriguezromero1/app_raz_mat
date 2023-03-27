import 'package:flutter/material.dart';
import 'package:raz_mat/viewmodels/topics/ages/solution_age1.dart';
import 'package:raz_mat/viewmodels/topics/ages/solution_age2.dart';
import 'package:raz_mat/viewmodels/topics/ages/solution_age3.dart';
import 'package:raz_mat/viewmodels/topics/ages/solution_age4.dart';
import 'package:raz_mat/viewmodels/topics/ages/statement_age1.dart';
import 'package:raz_mat/viewmodels/topics/ages/statement_age2.dart';
import 'package:raz_mat/viewmodels/topics/ages/statement_age3.dart';
import 'package:raz_mat/viewmodels/topics/ages/statement_age4.dart';
import 'package:raz_mat/viewmodels/topics/ages/theory_ages.dart';
import 'package:raz_mat/viewmodels/topics/ages/tip_age1.dart';
import 'package:raz_mat/viewmodels/topics/ages/tip_age2.dart';
import 'package:raz_mat/viewmodels/topics/ages/tip_age3.dart';
import 'package:raz_mat/viewmodels/topics/ages/tip_age4.dart';
import 'package:raz_mat/viewmodels/topics/chrono/solution_chrono1.dart';
import 'package:raz_mat/viewmodels/topics/chrono/solution_chrono2.dart';
import 'package:raz_mat/viewmodels/topics/chrono/solution_chrono3.dart';
import 'package:raz_mat/viewmodels/topics/chrono/solution_chrono4.dart';
import 'package:raz_mat/viewmodels/topics/chrono/statement_chrono1.dart';
import 'package:raz_mat/viewmodels/topics/chrono/statement_chrono2.dart';
import 'package:raz_mat/viewmodels/topics/chrono/statement_chrono3.dart';
import 'package:raz_mat/viewmodels/topics/chrono/statement_chrono4.dart';
import 'package:raz_mat/viewmodels/topics/chrono/theory_chrono.dart';
import 'package:raz_mat/viewmodels/topics/chrono/tip_chrono1.dart';
import 'package:raz_mat/viewmodels/topics/chrono/tip_chrono2.dart';
import 'package:raz_mat/viewmodels/topics/chrono/tip_chrono3.dart';
import 'package:raz_mat/viewmodels/topics/chrono/tip_chrono4.dart';
import 'package:raz_mat/viewmodels/topics/moving/solution_moving1.dart';
import 'package:raz_mat/viewmodels/topics/moving/solution_moving2.dart';
import 'package:raz_mat/viewmodels/topics/moving/solution_moving3.dart';
import 'package:raz_mat/viewmodels/topics/moving/solution_moving4.dart';
import 'package:raz_mat/viewmodels/topics/moving/statement_moving1.dart';
import 'package:raz_mat/viewmodels/topics/moving/statement_moving2.dart';
import 'package:raz_mat/viewmodels/topics/moving/statement_moving3.dart';
import 'package:raz_mat/viewmodels/topics/moving/statement_moving4.dart';
import 'package:raz_mat/viewmodels/topics/moving/theory_moving.dart';
import 'package:raz_mat/viewmodels/topics/moving/tip_moving1.dart';
import 'package:raz_mat/viewmodels/topics/moving/tip_moving2.dart';
import 'package:raz_mat/viewmodels/topics/moving/tip_moving3.dart';
import 'package:raz_mat/viewmodels/topics/moving/tip_moving4.dart';
import 'package:raz_mat/viewmodels/topics/series/solution_serie_nth1.dart';
import 'package:raz_mat/viewmodels/topics/series/solution_serie_nth2.dart';
import 'package:raz_mat/viewmodels/topics/series/solution_serie_nth3.dart';
import 'package:raz_mat/viewmodels/topics/series/solution_serie_sum1.dart';
import 'package:raz_mat/viewmodels/topics/series/solution_serie_sum2.dart';
import 'package:raz_mat/viewmodels/topics/series/solution_serie_sum3.dart';
import 'package:raz_mat/viewmodels/topics/series/statement_serie_nth.dart';
import 'package:raz_mat/viewmodels/topics/series/statement_serie_sum.dart';
import 'package:raz_mat/viewmodels/topics/series/theory_series.dart';
import 'package:raz_mat/viewmodels/topics/series/tip_serie_nth1.dart';
import 'package:raz_mat/viewmodels/topics/series/tip_serie_nth2.dart';
import 'package:raz_mat/viewmodels/topics/series/tip_serie_nth3.dart';
import 'package:raz_mat/viewmodels/topics/series/tip_serie_sum1.dart';
import 'package:raz_mat/viewmodels/topics/series/tip_serie_sum2.dart';
import 'package:raz_mat/viewmodels/topics/series/tip_serie_sum3.dart';

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

      'theorySeries': theorySeriesEs,
      'statementSerieNth': statementSerieNthEs,
      'statementSerieSum': statementSerieSumEs,
      'tipSerieNth1': tipSerieNth1Es,
      'tipSerieNth2': tipSerieNth2Es,
      'tipSerieNth3': tipSerieNth3Es,
      'tipSerieSum1': tipSerieSum1Es,
      'tipSerieSum2': tipSerieSum2Es,
      'tipSerieSum3': tipSerieSum3Es,
      'solutionSerieNth1': solutionSerieNth1Es,
      'solutionSerieSum1': solutionSerieSum1Es,
      'solutionSerieNth2': solutionSerieNth2Es,
      'solutionSerieSum2': solutionSerieSum2Es,
      'solutionSerieNth3': solutionSerieNth3Es,
      'solutionSerieSum3': solutionSerieSum3Es,
      
      'theoryAges': theoryAgesEs,
      'statementAge1': statementAge1Es,
      'statementAge2': statementAge2Es,
      'statementAge3': statementAge3Es,
      'statementAge4': statementAge4Es,
      'tipAge1': tipAge1Es,
      'tipAge2': tipAge2Es,
      'tipAge3': tipAge3Es,
      'tipAge4': tipAge4Es,
      'solutionAge1': solutionAge1Es,
      'solutionAge2': solutionAge2Es,  
      'solutionAge3': solutionAge3Es,
      'solutionAge4': solutionAge4Es,
      
      'theoryMoving': theoryMovingEs,
      'statementMoving1': statementMoving1Es,
      'statementMoving2': statementMoving2Es, 
      'statementMoving3': statementMoving3Es,
      'statementMoving4': statementMoving4Es,
      'tipMoving1': tipMoving1Es,
      'tipMoving2': tipMoving2Es,
      'tipMoving3': tipMoving3Es,
      'tipMoving4': tipMoving4Es,
      'solutionMoving1': solutionMoving1Es,
      'solutionMoving2': solutionMoving2Es,
      'solutionMoving3': solutionMoving3Es,
      'solutionMoving4': solutionMoving4Es,
      
      'theoryChrono': theoryChronoEs,
      'statementChrono1': statementChrono1Es,
      'statementChrono2': statementChrono2Es,
      'statementChrono3': statementChrono3Es,
      'statementChrono4': statementChrono4Es,
      'tipChrono1': tipChrono1Es,
      'tipChrono2': tipChrono2Es,
      'tipChrono3': tipChrono3Es,
      'tipChrono4': tipChrono4Es,
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
      
      'theorySeries': theorySeriesEn,
      'statementSerieNth': statementSerieNthEn,
      'statementSerieSum': statementSerieSumEn,
      'tipSerieNth1': tipSerieNth1En,
      'tipSerieNth2': tipSerieNth2En,
      'tipSerieNth3': tipSerieNth3En,
      'tipSerieSum1': tipSerieSum1En,
      'tipSerieSum2': tipSerieSum2En,
      'tipSerieSum3': tipSerieSum3En,
      'solutionSerieNth1': solutionSerieNth1En,
      'solutionSerieSum1': solutionSerieSum1En,
      'solutionSerieNth2': solutionSerieNth2En,
      'solutionSerieSum2': solutionSerieSum2En,
      'solutionSerieNth3': solutionSerieNth3En,
      'solutionSerieSum3': solutionSerieSum3En,
      
      'theoryAges': theoryAgesEn,
      'statementAge1': statementAge1En,
      'statementAge2': statementAge2En,
      'statementAge3': statementAge3En,
      'statementAge4': statementAge4En,
      'tipAge1': tipAge1En,
      'tipAge2': tipAge2En,
      'tipAge3': tipAge3En,
      'tipAge4': tipAge4En,
      'solutionAge1': solutionAge1En ,
      'solutionAge2': solutionAge2En,
      'solutionAge3': solutionAge3En,
      'solutionAge4': solutionAge4En,

      'theoryMoving': theoryMovingEn,
      'statementMoving1': statementMoving1En,
      'statementMoving2': statementMoving2En,
      'statementMoving3': statementMoving3En,
      'statementMoving4': statementMoving4En,
      'tipMoving1': tipMoving1En,
      'tipMoving2': tipMoving2En,
      'tipMoving3': tipMoving3En,
      'tipMoving4': tipMoving4En,
      'solutionMoving1': solutionMoving1En,
      'solutionMoving2': solutionMoving2En,
      'solutionMoving3': solutionMoving3En,
      'solutionMoving4': solutionMoving4En,

      'theoryChrono': theoryChronoEn,
      'statementChrono1': statementChrono1En,
      'statementChrono2': statementChrono2En,
      'statementChrono3': statementChrono3En,
      'statementChrono4': statementChrono4En,
      'tipChrono1': tipChrono1En,
      'tipChrono2': tipChrono2En,
      'tipChrono3': tipChrono3En,
      'tipChrono4': tipChrono4En,
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
  String get tip {
    return _localizedValues[locale.languageCode]!['tip']!;
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
  String get tipAge1 {
    return _localizedValues[locale.languageCode]!['tipAge1']!;
  }
  String get tipAge2 {
    return _localizedValues[locale.languageCode]!['tipAge2']!;
  }
  String get tipAge3 {
    return _localizedValues[locale.languageCode]!['tipAge3']!;
  }
  String get tipAge4 {
    return _localizedValues[locale.languageCode]!['tipAge4']!;
  }
  String get tipMoving1 {
    return _localizedValues[locale.languageCode]!['tipMoving1']!;
  }
  String get tipMoving2 {
    return _localizedValues[locale.languageCode]!['tipMoving2']!;
  }
  String get tipMoving3 {
    return _localizedValues[locale.languageCode]!['tipMoving3']!;
  }
  String get tipMoving4 {
    return _localizedValues[locale.languageCode]!['tipMoving4']!;
  }
  String get tipChrono1 {
    return _localizedValues[locale.languageCode]!['tipChrono1']!;
  }
  String get tipChrono2 {
    return _localizedValues[locale.languageCode]!['tipChrono2']!;
  }
  String get tipChrono3 {
    return _localizedValues[locale.languageCode]!['tipChrono3']!;
  }
  String get tipChrono4 {
    return _localizedValues[locale.languageCode]!['tipChrono4']!;
  }
  String get theorySeries {
    return _localizedValues[locale.languageCode]!['theorySeries']!;
  }
  String get theoryAges {
    return _localizedValues[locale.languageCode]!['theoryAges']!;
  }
  String get theoryMoving {
    return _localizedValues[locale.languageCode]!['theoryMoving']!;
  }
  String get theoryChrono {
    return _localizedValues[locale.languageCode]!['theoryChrono']!;
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
