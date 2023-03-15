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
      'solution':'SEE SOLUTION',
      'answer':'The answer is',
      'titleSolution':'SOLUTION',
      'statementSerieNth': ' Find the _n_ term of the arithmetic series: \r\n\n _serie_',
      'statementSerieSum':' Find the sum of the first _n_ terms of the arithmetic series: \r\n\n _serie_',
      'solutionSerieNth1':' First degree arithmetic series:\r\n _serie_ \r\n\n First term: a₁ = _a_ \r\n Arithmetic relation: r = _r_ \r\n Term number to find: n = _n_ \r\n\n Nth term: \r\n aₙ = a₁ + (n-1).r \r\n\n Replacing: \r\n aₙ = _a_ + (_n_-1)._r_ \r\n aₙ = _a_ + (_n-1_)._r_ \r\n aₙ = _a_ + _(n-1).r_ \r\n\n Result: \r\n aₙ = _an_',
      'solutionSerieSum1':' First degree arithmetic series:\r\n _serie_ \r\n\n First term: a₁ = _a_ \r\n Arithmetic relation: r = _r_ \r\n Number of terms: n = _n_ \r\n\n Sum of terms: \r\n Sₙ = a₁.n + [(n-1).n.r]/2 \r\n\n Replacing: \r\n Sₙ = _a_._n_ + [( _n_-1)._n_._r_]/2 \r\n Sₙ = _a.n_ + [(_n-1_)._n_._r_]/2 \r\n Sₙ = _a.n_ + _[(n-1).n.r]/2_ \r\n\n Result: \r\n Sₙ = _sn_',
      'solutionSerieNth2':' Second degree arithmetic series:\r\n _serie_ \r\n\n First term: a₁ = _a_ \r\n First arithmetic ratio: r₁ = _r1_ \r\n Second arithmetic ratio: r₂ = _r2_ \r\n Number of term to find: n = _n_ \r\n\n Nth term: \r\n aₙ = a₁ + (n-1).r₁ + [(n-1).(n-2).r₂]/2 \r\n\n Replacing: \r\n aₙ = _a_ + (_n_-1)._r1_ + [(_n_-1).(_n_-2)._r2_]/2 \r\n aₙ = _a_ + ( _n-1_)._r1_ + [(_n-1_).(_n-2_)._r2_]/2 \r\n aₙ = _a_ + _(n-1).r1_ + _[(n-1).(n-2).r2]/2_ \r\n\n Result: \r\n aₙ = _an_',
      'solutionSerieSum2':' Second degree arithmetic series:\r\n _serie_ \r\n\n First term: a₁ = _a_ \r\n First arithmetic ratio: r₁ = _r1_ \r\n Second arithmetic ratio: r₂ = _r2_ \r\n Number of terms: n = _n_ \r\n\n Sum of terms: \r\n Sₙ = a₁.n + [(n-1).n.r₁]/2 + [(n-2).(n-1).n.r₂]/6 \r\n\n Replacing: \r\n Sₙ = _a_._n_ + [(_n_-1)._n_._r1_]/2 + [(_n_-2).(_n_-1)._n_._r2_]/6 \r\n Sₙ = _a.n_ + [(_n-1_)._n_._r1_]/2 + [(_n-2_).(_n-1_)._n_._r2_]/6 \r\n Sₙ = _a.n_ + _[(n-1).n.r1]/2_ + _[(n-2).(n-1).n.r2]/6_ \r\n\n Result: \r\n Sₙ = _sn_',
      'solutionSerieNth3':' Third degree arithmetic series:\r\n _serie_ \r\n\n First term: a₁ = _a_ \r\n First arithmetic ratio: r₁ = _r1_ \r\n Second arithmetic ratio: r₂ = _r2_ \r\n Third arithmetic ratio: r₃ = _r3_ \r\n Number of term to find: n = _n_ \r\n\n Nth term: ratio \r\n aₙ = a₁ + (n-1).r₁ + [(n-1).(n-2).r₂]/2 + [(n-1).(n-2).(n-3).r₃]/6 \r\n\n Replacing: \r\n aₙ = _a_ + (_n_-1)._r1_ + [(_n_-1).(_n_-2)._r2_]/2 + [(_n_-1).(_n_-2).(_n_-3)._r3_]/6 \r\n aₙ = _a_ + (_n-1_)._r1_ + [(_n-1_).(_n-2_)._r2_]/2 + [(_n-1_).(_n-2_).(_n-3_)._r3_]/6 \r\n aₙ = _a_ + _(n-1).r1_ + _[(n-1).(n-2).r2]/2_ + _[(n-1).(n-2).(n-3).r3]/6_ \r\n\n Result: \r\n aₙ = _an_',
      'solutionSerieSum3':' Third degree arithmetic series:\r\n _serie_ \r\n\n First term: a₁ = _a_ \r\n First arithmetic ratio: r₁ = _r1_ \r\n Second arithmetic ratio: r₂ = _r2_ \r\n Third arithmetic ratio: r₃ = _r3_ \r\n Number of terms: n = _n_ \r\n\n Sum of terms: \r\n Sₙ = a₁.n + [(n-1).n .r₁]/2 + [(n-2).(n-1).n.r₂]/6 + [(n-3).(n-2).(n-1).n.r₃]/ 24 \r\n\n Replacing: \r\n Sₙ = _a_._n_ + [(_n_-1)._n_._r1_]/2 + [(_n_-2).(_n_-1)._n_._r2_]/6 + [(_n_-3).(_n_-2).(_n_-1)._n_._r3_]/24 \r\n Sₙ = _a.n_ + [(_n-1_)._n_._r1_]/ 2 + [(_n-2_).(_n-1_)._n_._r2_]/6 + [(_n-3_).(_n-2_).(_n-1_)._n_._r3_]/24 \r\n Sₙ = _a.n_ + _[(n-1).n.r1]/2_ + _[(n-2).(n-1).n.r2]/6_ + _[(n-3).(n-2).(n-1).n.r3]/24_ \r\n\n Result: \r\n Sₙ = _sn_',
      'statementAge1':' _a_ times the age I will be in _b_ years, minus _c_ times the age I had _d_ years ago, turns out to be _e_. How many years do I have left to turn _f_?',
      'solutionAge1': ' My current age: x years \r\n Past: x - _d_ \r\n Present: x \r\n Future: x + _b_ \r\n\n By condition: \r\n _a_.(x + _b_) - _c_.(x - _d_) = _e_ \r\n\n _a_.x + _a.b_ - _c_.x + _c.d_ = _e_ \r\n\n _(a-c)_.x + _(a.b+c.d)_ = _e_ \r\n\n x = _x_ \r\n Current age: _x_ years \r\n To reach _f_ years I need: \r\n\n _f_ - _x_ = _f-x_ years' ,
      'statementAge2': ' I am _a_ times your age. If my age in _b_ years is _c_ times the age you had _d_ years ago. How old am I?',
      'solutionAge2': ' Your current age: x years \r\n Past: \r\n  - Your age = x - _d_ \r\n Present: \r\n  - My age = _a_.x \r\n  - Your age = x \r\n Future: \r\n  - My age = _a_.x + _b_ \r\n\n By condition: \r\n _c_.(x - _d_) = _a_.x + _b_ \r\n _c_.x - _c.d_ = _a_.x + _b_ \r\n _(c-a)_.x = _c.d+b_ \r\n x = _x_ \r\n My current age = _a_.x = _a_._x_ \r\n Answer  = _a.x_ ',
      'statementAge3' : ' I am _a_ years old and you are _b_ years old. Within how many years will I be _c_ times your age?',
      'solutionAge3': ' Present: \r\n  - My age = _a_ years \r\n  - Your age = _b_ years \r\n Future: \r\n  - My age = _a_ + x \r\n  - Your age = _b_ + x \r\n\n By condition: \r\n _c_.(_b_ + x) = _a_ + x \r\n _c.b_ + _c_.x = _a_ + x \r\n _c_.x - x = _a-c.b_ \r\n _(c-1)_.x = _a-c.b_ \r\n\n Answer = _x_ years',
      'statementAge4': ' A person had their first child at _a_ years old and second child at _b_ years old. At the end of the year 2022, the sum of their ages is _c_ years. In what year was the person born?',
      'solutionAge4': ' Year of birth of child 1: \r\n - Person = _a_ years old \r\n - Child 1 = 0 years old \r\n Year of birth of child 2: \r\n - Person = _b_ years old \r\n - Child 1 = _b-a_ years old \r\n - Child 2 = 0 years old \r\n Year 2022: \r\n - Child 1 = _b-a_ + x years old \r\n - Child 2 = x years old \r\n\n By condition: \r\n _b_ - _a_ + x + x = _c_ \r\n _b-a_ + 2.x = _c_ \r\n 2.x = _c+a-b_ \r\n x = _x_ \r\n Year of birth of the person: \r\n = 2022 - _b_ - x \r\n = 2022 - _b_ - _x_ \r\n Answer: Year _2022-b-x_',
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
      'solution':'VER SOLUCION',
      'answer':'La respuesta es',
      'titleSolution':'SOLUCION',
      'statementSerieNth': 'Encuentra el término _n_ de la serie aritmética: \r\n\n _serie_',
      'statementSerieSum': 'Encuentra la suma de los primeros _n_ términos de la serie aritmética: \r\n\n _serie_',
      'solutionSerieNth1': ' Serie aritmética de primer grado:\r\n _serie_ \r\n\n Primer término: a₁ = _a_ \r\n Razón aritmética: r = _r_ \r\n Número de término a hallar: n = _n_ \r\n\n Término enésimo: \r\n aₙ = a₁ + (n-1).r \r\n\n Reemplazando: \r\n aₙ = _a_ + (_n_-1)._r_ \r\n aₙ = _a_ + (_n-1_)._r_ \r\n aₙ = _a_ + _(n-1).r_ \r\n\n Resultado: \r\n aₙ = _an_',
      'solutionSerieSum1': ' Serie aritmética de primer grado:\r\n _serie_ \r\n\n Primer término: a₁ = _a_ \r\n Razón aritmética: r = _r_ \r\n Número de términos: n = _n_ \r\n\n Suma de términos: \r\n Sₙ = a₁.n + [(n-1).n.r]/2 \r\n\n Reemplazando: \r\n Sₙ = _a_._n_ + [(_n_-1)._n_._r_]/2 \r\n Sₙ = _a.n_ + [(_n-1_)._n_._r_]/2 \r\n Sₙ = _a.n_ + _[(n-1).n.r]/2_ \r\n\n Resultado: \r\n Sₙ = _sn_',
      'solutionSerieNth2': ' Serie aritmética de segundo grado:\r\n _serie_ \r\n\n Primer término: a₁ = _a_ \r\n Primera razón aritmética: r₁ = _r1_ \r\n Segunda razón aritmética: r₂ = _r2_ \r\n Número de término a hallar: n = _n_ \r\n\n Término enésimo: \r\n aₙ = a₁ + (n-1).r₁ + [(n-1).(n-2).r₂]/2 \r\n\n Reemplazando: \r\n aₙ = _a_ + (_n_-1)._r1_ + [(_n_-1).(_n_-2)._r2_]/2 \r\n aₙ = _a_ + (_n-1_)._r1_ + [(_n-1_).(_n-2_)._r2_]/2 \r\n aₙ = _a_ + _(n-1).r1_ + _[(n-1).(n-2).r2]/2_ \r\n\n Resultado: \r\n aₙ = _an_',
      'solutionSerieSum2': ' Serie aritmética de segundo grado:\r\n _serie_ \r\n\n Primer término: a₁ = _a_ \r\n Primera razón aritmética: r₁ = _r1_ \r\n Segunda razón aritmética: r₂ = _r2_ \r\n Número de términos: n = _n_ \r\n\n Suma de términos: \r\n Sₙ = a₁.n + [(n-1).n.r₁]/2 + [(n-2).(n-1).n.r₂]/6 \r\n\n Reemplazando: \r\n Sₙ = _a_._n_ + [(_n_-1)._n_._r1_]/2 + [(_n_-2).(_n_-1)._n_._r2_]/6 \r\n Sₙ = _a.n_ + [(_n-1_)._n_._r1_]/2 + [(_n-2_).(_n-1_)._n_._r2_]/6 \r\n Sₙ = _a.n_ + _[(n-1).n.r1]/2_ + _[(n-2).(n-1).n.r2]/6_ \r\n\n Resultado: \r\n Sₙ = _sn_',
      'solutionSerieNth3': ' Serie aritmética de tercer grado:\r\n _serie_ \r\n\n Primer término: a₁ = _a_ \r\n Primera razón aritmética: r₁ = _r1_ \r\n Segunda razón aritmética: r₂ = _r2_ \r\n Tercera razón aritmética: r₃ = _r3_ \r\n Número de término a hallar: n = _n_ \r\n\n Término enésimo: \r\n aₙ = a₁ + (n-1).r₁ + [(n-1).(n-2).r₂]/2 + [(n-1).(n-2).(n-3).r₃]/6 \r\n\n Reemplazando: \r\n aₙ = _a_ + (_n_-1)._r1_ + [(_n_-1).(_n_-2)._r2_]/2 + [(_n_-1).(_n_-2).(_n_-3)._r3_]/6 \r\n aₙ = _a_ + (_n-1_)._r1_ + [(_n-1_).(_n-2_)._r2_]/2 + [(_n-1_).(_n-2_).(_n-3_)._r3_]/6 \r\n aₙ = _a_ + _(n-1).r1_ + _[(n-1).(n-2).r2]/2_ + _[(n-1).(n-2).(n-3).r3]/6_ \r\n\n Resultado: \r\n aₙ = _an_',
      'solutionSerieSum3': ' Serie aritmética de tercer grado:\r\n _serie_ \r\n\n Primer término: a₁ = _a_ \r\n Primera razón aritmética: r₁ = _r1_ \r\n Segunda razón aritmética: r₂ = _r2_ \r\n Tercera razón aritmética: r₃ = _r3_ \r\n Número de términos: n = _n_ \r\n\n Suma de términos: \r\n Sₙ = a₁.n + [(n-1).n.r₁]/2 + [(n-2).(n-1).n.r₂]/6 + [(n-3).(n-2).(n-1).n.r₃]/24 \r\n\n Reemplazando: \r\n Sₙ = _a_._n_ + [(_n_-1)._n_._r1_]/2 + [(_n_-2).(_n_-1)._n_._r2_]/6 + [(_n_-3).(_n_-2).(_n_-1)._n_._r3_]/24 \r\n Sₙ = _a.n_ + [(_n-1_)._n_._r1_]/2 + [(_n-2_).(_n-1_)._n_._r2_]/6 + [(_n-3_).(_n-2_).(_n-1_)._n_._r3_]/24 \r\n Sₙ = _a.n_ + _[(n-1).n.r1]/2_ + _[(n-2).(n-1).n.r2]/6_ + _[(n-3).(n-2).(n-1).n.r3]/24_ \r\n\n Resultado: \r\n Sₙ = _sn_',
      'statementAge1':'_a_ veces la edad que tendré dentro de _b_ años, menos _c_ veces la edad que tenía hace _d_ años, resulta ser _e_. ¿Cuántos años me faltan para cumplir _f_ años?',
      'solutionAge1': ' Mi edad actual: x años \r\n Pasado: x - _d_ \r\n Presente: x \r\n Futuro: x + _b_ \r\n\n Por condición: \r\n _a_.(x + _b_) - _c_(x - _d_)=_e_ \r\n\n _a_.x + _a.b_ - _c_.x + _c.d_ = _e_ \r\n\n _(a-c)_.x + _(a.b+c.d)_ = _e_ \r\n\n x = _x_ \r\n Edad actual: _x_ años \r\n Para cumplir _f_ años me faltan: \r\n\n _f_ - _x_ = _f-x_ años',
      'statementAge2':' Yo tengo _a_ veces tu edad. Si mi edad dentro de _b_ años es _c_ veces la edad que tú tenías hace _d_ años. ¿Qué edad tengo?',
      'solutionAge2': ' Tu edad actual: x años \r\n Pasado: \r\n  - Tu edad = x - _d_ \r\n Presente: \r\n  - Mi edad = _a_.x \r\n  - Tu edad = x \r\n Futuro: \r\n  - Mi edad = _a_.x + _b_ \r\n\n Por condición: \r\n _c_.(x - _d_) = _a_.x + _b_ \r\n _c_.x - _c.d_ = _a_.x + _b_ \r\n _(c-a)_.x = _c.d+b_ \r\n x = _x_ \r\n Mi edad actual = _a_.x = _a_._x_ \r\n Respuesta = _a.x_',
      'statementAge3': ' Yo tengo _a_ años y tú tienes _b_ años. ¿Dentro de cuántos años yo tendré _c_ veces tu edad?',
      'solutionAge3': ' Presente: \r\n  - Mi edad = _a_ años \r\n  - Tu edad = _b_ años \r\n Futuro: \r\n  - Mi edad = _a_ + x \r\n  - Tu edad = _b_ + x \r\n\n Por condición: \r\n _c_.(_b_ + x) = _a_ + x \r\n _c.b_ + _c_.x = _a_ + x \r\n _c_.x - x = _a-c.b_ \r\n _(c-1)_.x = _a-c.b_ \r\n\n Respuesta = _x_ años',
      'statementAge4':' Una persona tuvo su primer hijo a los _a_ años y segundo hijo a los _b_ años. A fines del año 2022 la suma de las edades de los hijos es _c_ años. ¿En qué año nació la persona?',
      'solutionAge4': ' Año nacimiento hijo 1: \r\n  - Persona = _a_ años \r\n  - Hijo 1 = 0 años \r\n Año nacimiento hijo 2: \r\n  - Persona = _b_ años \r\n  - Hijo 1 = _b-a_ \r\n  - Hijo 2 = 0 años \r\n Año 2022: \r\n  - Hijo 1 = _b-a_ + x \r\n  - Hijo 2 = x años \r\n\n Por condición: \r\n _b_ - _a_ + x + x = _c_ \r\n _b-a_ + 2.x = _c_ \r\n 2.x = _c+a-b_ \r\n x = _x_ \r\n Año de nacimiento de la persona: \r\n = 2022 - _b_ - x \r\n = 2022 - _b_ - _x_ \r\n Respuesta: Año _2022-b-x_',
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
  String get statementAge5 {
    return _localizedValues[locale.languageCode]!['statementAge5']!;
  }
  String get solutionAge5 {
    return _localizedValues[locale.languageCode]!['solutionAge5']!;
  }
  String get statementAge6 {
    return _localizedValues[locale.languageCode]!['statementAge6']!;
  }
  String get solutionAge6 {
    return _localizedValues[locale.languageCode]!['solutionAge6']!;
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
