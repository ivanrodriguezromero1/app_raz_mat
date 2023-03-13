import 'package:flutter/material.dart';

class MyAppLocalizations {
  MyAppLocalizations(this.locale);

  final Locale locale;

  static MyAppLocalizations of(BuildContext context) {
    return Localizations.of<MyAppLocalizations>(context, MyAppLocalizations)!;
  }

  static final Map<String, Map<String, String>> _localizedValues = {
    'en': {
      'title': 'Mathematical Reasoning',
      'settings': 'Settings',
      'problems':'Practice Problems',
      'topic1':'Series',
      'topic2':'Ages',
      'topic3':'Kinship Relations',
      'topic4':'Chronometry',
      'topic5':'Counting',
      'difficulty':'Difficulty',
      'easy': 'Easy',
      'normal':'Normal',
      'hard':'Hard',
      'disconnected':'There is no internet connection',
      'close': 'Close',
      'check': 'CHECK',
      'newProblem': 'NEW',
      'statementSerieNth': 'Find the _n_ term of the arithmetic series: \r\n\n _serie_',
      'statementSerieSum':'Find the sum of the first _n_ terms of the arithmetic series: \r\n\n _serie_',
      'solution':'SEE SOLUTION',
      'titleSolution':'SOLUTION',
      'statementAge1':'_a_ times the age I will be in _b_ years, minus _c_ times the age I was _d_ years ago, equals _e_. How many years do I have until I turn _f_?',
      'answer':'The answer is',
      'solutionSerieNth1':' First degree arithmetic series:\r\n _serie_ \r\n\n First term: a₁ = _a_ \r\n Arithmetic relation: r = _r_ \r\n Term number to find: n = _n_ \r\n\n Nth term: \r\n aₙ = a₁ + (n-1).r \r\n\n Replacing: \r\n aₙ = _a_ + (_n_-1)._r_ \r\n aₙ = _a_ + (_n-1_)._r_ \r\n aₙ = _a_ + _(n-1).r_ \r\n\n Result: \r\n aₙ = _an_',
      'solutionSerieSum1':' First degree arithmetic series:\r\n _serie_ \r\n\n First term: a₁ = _a_ \r\n Arithmetic relation: r = _r_ \r\n Number of terms: n = _n_ \r\n\n Sum of terms: \r\n Sₙ = a₁.n + [(n-1).n.r]/2 \r\n\n Replacing: \r\n Sₙ = _a_._n_ + [( _n_-1)._n_._r_]/2 \r\n Sₙ = _a.n_ + [(_n-1_)._n_._r_]/2 \r\n Sₙ = _a.n_ + _[(n-1).n.r]/2_ \r\n\n Result: \r\n Sₙ = _sn_',
      'solutionSerieNth2':' Second degree arithmetic series:\r\n _serie_ \r\n\n First term: a₁ = _a_ \r\n First arithmetic ratio: r₁ = _r1_ \r\n Second arithmetic ratio: r₂ = _r2_ \r\n Number of term to find: n = _n_ \r\n\n Nth term: \r\n aₙ = a₁ + (n-1).r₁ + [(n-1).(n-2).r₂]/2 \r\n\n Replacing: \r\n aₙ = _a_ + (_n_-1)._r1_ + [(_n_-1).(_n_-2)._r2_]/2 \r\n aₙ = _a_ + ( _n-1_)._r1_ + [(_n-1_).(_n-2_)._r2_]/2 \r\n aₙ = _a_ + _(n-1).r1_ + _[(n-1).(n-2).r2]/2_ \r\n\n Result: \r\n aₙ = _an_',
      'solutionSerieSum2':' Second degree arithmetic series:\r\n _serie_ \r\n\n First term: a₁ = _a_ \r\n First arithmetic ratio: r₁ = _r1_ \r\n Second arithmetic ratio: r₂ = _r2_ \r\n Number of terms: n = _n_ \r\n\n Sum of terms: \r\n Sₙ = a₁.n + [(n-1).n.r₁]/2 + [(n-2).(n-1).n.r₂]/6 \r\n\n Replacing: \r\n Sₙ = _a_._n_ + [(_n_-1)._n_._r1_]/2 + [(_n_-2).(_n_-1)._n_._r2_]/6 \r\n Sₙ = _a.n_ + [(_n-1_)._n_._r1_]/2 + [(_n-2_).(_n-1_)._n_._r2_]/6 \r\n Sₙ = _a.n_ + _[(n-1).n.r1]/2_ + _[(n-2).(n-1).n.r2]/6_ \r\n\n Result: \r\n Sₙ = _sn_',
      'solutionSerieNth3':' Third degree arithmetic series:\r\n _serie_ \r\n\n First term: a₁ = _a_ \r\n First arithmetic ratio: r₁ = _r1_ \r\n Second arithmetic ratio: r₂ = _r2_ \r\n Third arithmetic ratio: r₃ = _r3_ \r\n Number of term to find: n = _n_ \r\n\n Nth term: ratio \r\n aₙ = a₁ + (n-1).r₁ + [(n-1).(n-2).r₂]/2 + [(n-1).(n-2).(n-3).r₃]/6 \r\n\n Replacing: \r\n aₙ = _a_ + (_n_-1)._r1_ + [(_n_-1).(_n_-2)._r2_]/2 + [(_n_-1).(_n_-2).(_n_-3)._r3_]/6 \r\n aₙ = _a_ + (_n-1_)._r1_ + [(_n-1_).(_n-2_)._r2_]/2 + [(_n-1_).(_n-2_).(_n-3_)._r3_]/6 \r\n aₙ = _a_ + _(n-1).r1_ + _[(n-1).(n-2).r2]/2_ + _[(n-1).(n-2).(n-3).r3]/6_ \r\n\n Result: \r\n aₙ = _an_',
      'solutionSerieSum3':' Third degree arithmetic series:\r\n _serie_ \r\n\n First term: a₁ = _a_ \r\n First arithmetic ratio: r₁ = _r1_ \r\n Second arithmetic ratio: r₂ = _r2_ \r\n Third arithmetic ratio: r₃ = _r3_ \r\n Number of terms: n = _n_ \r\n\n Sum of terms: \r\n Sₙ = a₁.n + [(n-1).n .r₁]/2 + [(n-2).(n-1).n.r₂]/6 + [(n-3).(n-2).(n-1).n.r₃]/ 24 \r\n\n Replacing: \r\n Sₙ = _a_._n_ + [(_n_-1)._n_._r1_]/2 + [(_n_-2).(_n_-1)._n_._r2_]/6 + [(_n_-3).(_n_-2).(_n_-1)._n_._r3_]/24 \r\n Sₙ = _a.n_ + [(_n-1_)._n_._r1_]/ 2 + [(_n-2_).(_n-1_)._n_._r2_]/6 + [(_n-3_).(_n-2_).(_n-1_)._n_._r3_]/24 \r\n Sₙ = _a.n_ + _[(n-1).n.r1]/2_ + _[(n-2).(n-1).n.r2]/6_ + _[(n-3).(n-2).(n-1).n.r3]/24_ \r\n\n Result: \r\n Sₙ = _sn_',
    },
    'es': {
      'title': 'Razonamiento Matemático',
      'problems':'Problemas de Práctica',
      'settings': 'Opciones',
      'topic1':'Series',
      'topic2':'Edades',
      'topic3':'Relaciones de Parentesco',
      'topic4':'Cronometría',
      'topic5':'Conteo',
      'difficulty':'Dificultad',
      'easy': 'Fácil',
      'normal':'Normal',
      'hard':'Difícil',
      'disconnected':'No hay conexión a internet',
      'close': 'Cerrar',
      'check': 'COMPROBAR',
      'newProblem': 'NUEVO',
      'statementSerieNth': 'Encuentra el término _n_ de la serie aritmética: \r\n\n _serie_',
      'statementSerieSum': 'Encuentra la suma de los primeros _n_ términos de la serie aritmética: \r\n\n _serie_',
      'solution':'VER SOLUCION',
      'titleSolution':'SOLUCION',
      'statementAge1':'_a_ veces la edad que tendré dentro de _b_ años, menos _c_ veces la edad que tenía hace _d_ años, resulta ser _e_. ¿Cuántos años me faltan para cumplir _f_ años?',
      'statementAge2':'Yo tengo el doble de tu edad. Si mi edad dentro de 5 años es el triple de la edad que tú tenías hace 7 años. ¿Qué edad tengo?',
      'answer':'La respuesta es',
      'solutionSerieNth1': ' Serie aritmética de primer grado:\r\n _serie_ \r\n\n Primer término: a₁ = _a_ \r\n Razón aritmética: r = _r_ \r\n Número de término a hallar: n = _n_ \r\n\n Término enésimo: \r\n aₙ = a₁ + (n-1).r \r\n\n Reemplazando: \r\n aₙ = _a_ + (_n_-1)._r_ \r\n aₙ = _a_ + (_n-1_)._r_ \r\n aₙ = _a_ + _(n-1).r_ \r\n\n Resultado: \r\n aₙ = _an_',
      'solutionSerieSum1': ' Serie aritmética de primer grado:\r\n _serie_ \r\n\n Primer término: a₁ = _a_ \r\n Razón aritmética: r = _r_ \r\n Número de términos: n = _n_ \r\n\n Suma de términos: \r\n Sₙ = a₁.n + [(n-1).n.r]/2 \r\n\n Reemplazando: \r\n Sₙ = _a_._n_ + [(_n_-1)._n_._r_]/2 \r\n Sₙ = _a.n_ + [(_n-1_)._n_._r_]/2 \r\n Sₙ = _a.n_ + _[(n-1).n.r]/2_ \r\n\n Resultado: \r\n Sₙ = _sn_',
      'solutionSerieNth2': ' Serie aritmética de segundo grado:\r\n _serie_ \r\n\n Primer término: a₁ = _a_ \r\n Primera razón aritmética: r₁ = _r1_ \r\n Segunda razón aritmética: r₂ = _r2_ \r\n Número de término a hallar: n = _n_ \r\n\n Término enésimo: \r\n aₙ = a₁ + (n-1).r₁ + [(n-1).(n-2).r₂]/2 \r\n\n Reemplazando: \r\n aₙ = _a_ + (_n_-1)._r1_ + [(_n_-1).(_n_-2)._r2_]/2 \r\n aₙ = _a_ + (_n-1_)._r1_ + [(_n-1_).(_n-2_)._r2_]/2 \r\n aₙ = _a_ + _(n-1).r1_ + _[(n-1).(n-2).r2]/2_ \r\n\n Resultado: \r\n aₙ = _an_',
      'solutionSerieSum2': ' Serie aritmética de segundo grado:\r\n _serie_ \r\n\n Primer término: a₁ = _a_ \r\n Primera razón aritmética: r₁ = _r1_ \r\n Segunda razón aritmética: r₂ = _r2_ \r\n Número de términos: n = _n_ \r\n\n Suma de términos: \r\n Sₙ = a₁.n + [(n-1).n.r₁]/2 + [(n-2).(n-1).n.r₂]/6 \r\n\n Reemplazando: \r\n Sₙ = _a_._n_ + [(_n_-1)._n_._r1_]/2 + [(_n_-2).(_n_-1)._n_._r2_]/6 \r\n Sₙ = _a.n_ + [(_n-1_)._n_._r1_]/2 + [(_n-2_).(_n-1_)._n_._r2_]/6 \r\n Sₙ = _a.n_ + _[(n-1).n.r1]/2_ + _[(n-2).(n-1).n.r2]/6_ \r\n\n Resultado: \r\n Sₙ = _sn_',
      'solutionSerieNth3': ' Serie aritmética de tercer grado:\r\n _serie_ \r\n\n Primer término: a₁ = _a_ \r\n Primera razón aritmética: r₁ = _r1_ \r\n Segunda razón aritmética: r₂ = _r2_ \r\n Tercera razón aritmética: r₃ = _r3_ \r\n Número de término a hallar: n = _n_ \r\n\n Término enésimo: \r\n aₙ = a₁ + (n-1).r₁ + [(n-1).(n-2).r₂]/2 + [(n-1).(n-2).(n-3).r₃]/6 \r\n\n Reemplazando: \r\n aₙ = _a_ + (_n_-1)._r1_ + [(_n_-1).(_n_-2)._r2_]/2 + [(_n_-1).(_n_-2).(_n_-3)._r3_]/6 \r\n aₙ = _a_ + (_n-1_)._r1_ + [(_n-1_).(_n-2_)._r2_]/2 + [(_n-1_).(_n-2_).(_n-3_)._r3_]/6 \r\n aₙ = _a_ + _(n-1).r1_ + _[(n-1).(n-2).r2]/2_ + _[(n-1).(n-2).(n-3).r3]/6_ \r\n\n Resultado: \r\n aₙ = _an_',
      'solutionSerieSum3': ' Serie aritmética de tercer grado:\r\n _serie_ \r\n\n Primer término: a₁ = _a_ \r\n Primera razón aritmética: r₁ = _r1_ \r\n Segunda razón aritmética: r₂ = _r2_ \r\n Tercera razón aritmética: r₃ = _r3_ \r\n Número de términos: n = _n_ \r\n\n Suma de términos: \r\n Sₙ = a₁.n + [(n-1).n.r₁]/2 + [(n-2).(n-1).n.r₂]/6 + [(n-3).(n-2).(n-1).n.r₃]/24 \r\n\n Reemplazando: \r\n Sₙ = _a_._n_ + [(_n_-1)._n_._r1_]/2 + [(_n_-2).(_n_-1)._n_._r2_]/6 + [(_n_-3).(_n_-2).(_n_-1)._n_._r3_]/24 \r\n Sₙ = _a.n_ + [(_n-1_)._n_._r1_]/2 + [(_n-2_).(_n-1_)._n_._r2_]/6 + [(_n-3_).(_n-2_).(_n-1_)._n_._r3_]/24 \r\n Sₙ = _a.n_ + _[(n-1).n.r1]/2_ + _[(n-2).(n-1).n.r2]/6_ + _[(n-3).(n-2).(n-1).n.r3]/24_ \r\n\n Resultado: \r\n Sₙ = _sn_',
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
  String get titleSolution {
    return _localizedValues[locale.languageCode]!['titleSolution']!;
  }
  String get statementAge1 {
    return _localizedValues[locale.languageCode]!['statementAge1']!;
  }
  String get answer {
    return _localizedValues[locale.languageCode]!['answer']!;
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
  Future<bool> load() async {
    return true;
  }
}

class MyAppLocalizationsDelegate extends LocalizationsDelegate<MyAppLocalizations> {
  const MyAppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'es'].contains(locale.languageCode);

  @override
  Future<MyAppLocalizations> load(Locale locale) async {
    MyAppLocalizations localizations = MyAppLocalizations(locale);
    await localizations.load();
    return localizations;
  }

  @override
  bool shouldReload(MyAppLocalizationsDelegate old) => false;
}
