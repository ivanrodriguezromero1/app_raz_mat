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
      'topic3':'Moving',
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
      'statementSerieNth': 'Find the _n_ term of the arithmetic series: \r\n\n _serie_',
      'statementSerieSum':'Find the sum of the first _n_ terms of the arithmetic series: \r\n\n _serie_',
      'solutionSerieNth1':' First degree arithmetic series:\r\n _serie_ \r\n\n First term: a₁ = _a_ \r\n Arithmetic relation: r = _r_ \r\n Term number to find: n = _n_ \r\n\n Nth term: \r\n aₙ = a₁ + (n-1).r \r\n\n Replacing: \r\n aₙ = _a_ + (_n_-1)._r_ \r\n aₙ = _a_ + (_n-1_)._r_ \r\n aₙ = _a_ + _(n-1).r_ \r\n\n Result: \r\n aₙ = _an_',
      'solutionSerieSum1':' First degree arithmetic series:\r\n _serie_ \r\n\n First term: a₁ = _a_ \r\n Arithmetic relation: r = _r_ \r\n Number of terms: n = _n_ \r\n\n Sum of terms: \r\n Sₙ = a₁.n + [(n-1).n.r]/2 \r\n\n Replacing: \r\n Sₙ = _a_._n_ + [( _n_-1)._n_._r_]/2 \r\n Sₙ = _a.n_ + [(_n-1_)._n_._r_]/2 \r\n Sₙ = _a.n_ + _[(n-1).n.r]/2_ \r\n\n Result: \r\n Sₙ = _sn_',
      'solutionSerieNth2':' Second degree arithmetic series:\r\n _serie_ \r\n\n First term: a₁ = _a_ \r\n First arithmetic ratio: r₁ = _r1_ \r\n Second arithmetic ratio: r₂ = _r2_ \r\n Number of term to find: n = _n_ \r\n\n Nth term: \r\n aₙ = a₁ + (n-1).r₁ + [(n-1).(n-2).r₂]/2 \r\n\n Replacing: \r\n aₙ = _a_ + (_n_-1)._r1_ + [(_n_-1).(_n_-2)._r2_]/2 \r\n aₙ = _a_ + ( _n-1_)._r1_ + [(_n-1_).(_n-2_)._r2_]/2 \r\n aₙ = _a_ + _(n-1).r1_ + _[(n-1).(n-2).r2]/2_ \r\n\n Result: \r\n aₙ = _an_',
      'solutionSerieSum2':' Second degree arithmetic series:\r\n _serie_ \r\n\n First term: a₁ = _a_ \r\n First arithmetic ratio: r₁ = _r1_ \r\n Second arithmetic ratio: r₂ = _r2_ \r\n Number of terms: n = _n_ \r\n\n Sum of terms: \r\n Sₙ = a₁.n + [(n-1).n.r₁]/2 + [(n-2).(n-1).n.r₂]/6 \r\n\n Replacing: \r\n Sₙ = _a_._n_ + [(_n_-1)._n_._r1_]/2 + [(_n_-2).(_n_-1)._n_._r2_]/6 \r\n Sₙ = _a.n_ + [(_n-1_)._n_._r1_]/2 + [(_n-2_).(_n-1_)._n_._r2_]/6 \r\n Sₙ = _a.n_ + _[(n-1).n.r1]/2_ + _[(n-2).(n-1).n.r2]/6_ \r\n\n Result: \r\n Sₙ = _sn_',
      'solutionSerieNth3':' Third degree arithmetic series:\r\n _serie_ \r\n\n First term: a₁ = _a_ \r\n First arithmetic ratio: r₁ = _r1_ \r\n Second arithmetic ratio: r₂ = _r2_ \r\n Third arithmetic ratio: r₃ = _r3_ \r\n Number of term to find: n = _n_ \r\n\n Nth term: ratio \r\n aₙ = a₁ + (n-1).r₁ + [(n-1).(n-2).r₂]/2 + [(n-1).(n-2).(n-3).r₃]/6 \r\n\n Replacing: \r\n aₙ = _a_ + (_n_-1)._r1_ + [(_n_-1).(_n_-2)._r2_]/2 + [(_n_-1).(_n_-2).(_n_-3)._r3_]/6 \r\n aₙ = _a_ + (_n-1_)._r1_ + [(_n-1_).(_n-2_)._r2_]/2 + [(_n-1_).(_n-2_).(_n-3_)._r3_]/6 \r\n aₙ = _a_ + _(n-1).r1_ + _[(n-1).(n-2).r2]/2_ + _[(n-1).(n-2).(n-3).r3]/6_ \r\n\n Result: \r\n aₙ = _an_',
      'solutionSerieSum3':' Third degree arithmetic series:\r\n _serie_ \r\n\n First term: a₁ = _a_ \r\n First arithmetic ratio: r₁ = _r1_ \r\n Second arithmetic ratio: r₂ = _r2_ \r\n Third arithmetic ratio: r₃ = _r3_ \r\n Number of terms: n = _n_ \r\n\n Sum of terms: \r\n Sₙ = a₁.n + [(n-1).n .r₁]/2 + [(n-2).(n-1).n.r₂]/6 + [(n-3).(n-2).(n-1).n.r₃]/ 24 \r\n\n Replacing: \r\n Sₙ = _a_._n_ + [(_n_-1)._n_._r1_]/2 + [(_n_-2).(_n_-1)._n_._r2_]/6 + [(_n_-3).(_n_-2).(_n_-1)._n_._r3_]/24 \r\n Sₙ = _a.n_ + [(_n-1_)._n_._r1_]/ 2 + [(_n-2_).(_n-1_)._n_._r2_]/6 + [(_n-3_).(_n-2_).(_n-1_)._n_._r3_]/24 \r\n Sₙ = _a.n_ + _[(n-1).n.r1]/2_ + _[(n-2).(n-1).n.r2]/6_ + _[(n-3).(n-2).(n-1).n.r3]/24_ \r\n\n Result: \r\n Sₙ = _sn_',
      'statementAge1':'_a_ times the age I will be in _b_ years, minus _c_ times the age I had _d_ years ago, turns out to be _e_. How many years do I have left to turn _f_?',
      'solutionAge1': ' My current age: x years \r\n Past: x - _d_ \r\n Present: x \r\n Future: x + _b_ \r\n\n By condition: \r\n _a_.(x + _b_) - _c_.(x - _d_) = _e_ \r\n\n _a_.x + _a.b_ - _c_.x + _c.d_ = _e_ \r\n\n _(a-c)_.x + _(a.b+c.d)_ = _e_ \r\n\n x = _x_ \r\n Current age: _x_ years \r\n To reach _f_ years I need: \r\n\n _f_ - _x_ = _f-x_ years' ,
      'statementAge2': 'I am _a_ times your age. If my age in _b_ years is _c_ times the age you had _d_ years ago. How old am I?',
      'solutionAge2': ' Your current age: x years \r\n Past: \r\n  - Your age = x - _d_ \r\n Present: \r\n  - My age = _a_.x \r\n  - Your age = x \r\n Future: \r\n  - My age = _a_.x + _b_ \r\n\n By condition: \r\n _c_.(x - _d_) = _a_.x + _b_ \r\n _c_.x - _c.d_ = _a_.x + _b_ \r\n _(c-a)_.x = _c.d+b_ \r\n x = _x_ \r\n My current age = _a_.x = _a_._x_ \r\n Answer  = _a.x_ ',
      'statementAge3' : 'I am _a_ years old and you are _b_ years old. Within how many years will I be _c_ times your age?',
      'solutionAge3': ' Present: \r\n  - My age = _a_ years \r\n  - Your age = _b_ years \r\n Future: \r\n  - My age = _a_ + x \r\n  - Your age = _b_ + x \r\n\n By condition: \r\n _c_.(_b_ + x) = _a_ + x \r\n _c.b_ + _c_.x = _a_ + x \r\n _c_.x - x = _a-c.b_ \r\n _(c-1)_.x = _a-c.b_ \r\n\n Answer = _x_ years',
      'statementAge4': 'A person had their first child at _a_ years old and second child at _b_ years old. At the end of the year 2022, the sum of their ages is _c_ years. In what year was the person born?',
      'solutionAge4': ' Year of birth of child 1: \r\n - Person = _a_ years old \r\n - Child 1 = 0 years old \r\n Year of birth of child 2: \r\n - Person = _b_ years old \r\n - Child 1 = _b-a_ years old \r\n - Child 2 = 0 years old \r\n Year 2022: \r\n - Child 1 = _b-a_ + x years old \r\n - Child 2 = x years old \r\n\n By condition: \r\n _b_ - _a_ + x + x = _c_ \r\n _b-a_ + 2.x = _c_ \r\n 2.x = _c+a-b_ \r\n x = _x_ \r\n Year of birth of the person: \r\n = 2022 - _b_ - x \r\n = 2022 - _b_ - _x_ \r\n Answer: Year _2022-b-x_',
      'statementMoving1': 'Two mobiles start moving simultaneously towards each other. If they are separated by _a_ meters and their velocities are _b_ m/s and _c_ m/s respectively, after how many seconds will they meet?',
      'solutionMoving1': ' Velocity of Mobile 1: \r\n V₁ = _b_ m/s \r\n Velocity of Mobile 2: \r\n V₂ = _c_ m/s \r\n Distance: _a_ m \r\n\n Time of meeting: \r\n T = Distance/[V₁ + V₂] \r\n T = _a_/[_b_ + _c_] \r\n T = _a_/_[b+c]_ \r\n T = _t_ \r\n\n Answer: _t_ seconds',
      'statementMoving2': 'A mobile with velocity of _b_ m/s is following another mobile with velocity of _c_ m/s, if both are traveling in the same direction and initially separated by _a_ meters, at what time will the first mobile catch up with the second one?',
      'solutionMoving2': ' Velocity of Mobile 1: \r\n V₁ = _b_ m/s \r\n Velocity of Mobile 2: \r\n V₂ = _c_ m/s \r\n Distance: _a_ m \r\n\n Time of catching up: \r\n T = Distance/[V₁ - V₂] \r\n T = _a_/[_b_ - _c_] \r\n T = _a_/_[b-c]_ \r\n T = _t_ \r\n\n Answer: _t_ seconds',
      'statementMoving3': 'A mobile of _a_ meters passes through a tunnel. If the mobile has a velocity of _b_ m/s and takes _t_ seconds to cross the tunnel, what is the length of the tunnel?',
      'solutionMoving3': ' Velocity of the mobile: \r\n V = _b_ m/s \r\n Length of the mobile: \r\n L = _a_ m \r\n Time to cross the tunnel: \r\n T = _t_ s \r\n Length of the tunnel: X \r\n Total distance traveled: \r\n L + X = V.T \r\n X = V.T - L \r\n X = _b_._t_ - _a_ \r\n X = _b.t_ - _a_ \r\n X = _x_ \r\n\n Answer: _x_ meters',
      'statementMoving4': 'A mobile travels through two sections, the first at a speed of _b_ m/s and the second at _c_ m/s. If the total distance traveled was _a_ meters and the total time was _t_ seconds, how long did the journey last in the second section?',
      'solutionMoving4': ' Velocity in the first segment: \r\n V₁ = _b_ m/s \r\n Velocity in the second segment: \r\n V₂ = _c_ m/s \r\n Time in the first segment: T₁ \r\n Time in the second segment: T₂ \r\n Total time: \r\n T = _t_ = T₁ + T₂ \r\n Total distance: \r\n L = _a_ = V₁.T₁ + V₂.T₂ \r\n\n Substituting: \r\n _a_ = _b_.T₁ + _c_.T₂ \r\n _a_ = _b_.(_t_ - T₂) + _c_.T₂ \r\n (_c_ - _b_).T₂ = _a_ - _b_._t_ \r\n (_c-b_).T₂ = _a_ - _b.t_ \r\n (_c-b_).T₂ = _a-b.t_ \r\n T₂ = _t2_ \r\n Answer: _t2_ seconds',
      'statementChrono1': 'What is the angle in degrees between the hour and minute hands in _h_:_m_?',
      'solutionChrono1': ' Hour: \r\n H = _h_ \r\n Minutes: \r\n M = _m_ \r\n It is known that: α = |30.H - 5.5.M| degrees \r\n α = |30._h_ - 5.5._m_| \r\n α = |_30.h_ - _5.5.m_| \r\n α = |_30.h-5.5.m_| \r\n α = _a_ \r\n Answer: _a_ degrees',
      'statementChrono2': "How many minutes past _h_ o'clock must elapse for the angle between the hour hand and the minute hand to be _a_ degrees for the first time?",
      'solutionChrono2': ' Hour: \r\n H = _h_ \r\n Angle: \r\n α = _a_ degrees \r\n We know that: \r\n α = 30.H - 5,5.M degrees \r\n _a_ = 30._h_ - 5,5.M \r\n _a_ = _30.h_ - 5,5.M \r\n 5,5.M = _30.h_ - _a_ \r\n 5,5.M = _30.h-a_ \r\n M = _m_ \r\n Answer: _m_ minutes',
      'statementChrono3': "How many minutes past _h_ o'clock must elapse for the angle between the hour hand and the minute hand to be _a_ degrees for the second time?",
      'solutionChrono3': ' Hour: \r\n  H = h \r\n Angle: \r\n  α = _a_ degrees \r\n It is known that: \r\n α = 5,5.M - 30.H degrees \r\n _a_ = 5,5.M - 30._h_ \r\n _a_ = 5,5.M - _30.h_ \r\n 5,5.M = _30.h_ + _a_ \r\n 5,5.M = _30.h+a_ \r\n M = _m_ \r\n Answer: _m_ minutes',
      'statementChrono4': 'An clock that indicates the time by chimes, takes _t1_ seconds to chime _c1_ times. How many chimes will it make in _t2_ seconds?',
      'solutionChrono4': ' Case 1: \r\n  Number of bells: \r\n   C₁ = _c1_ \r\n  Time the bells: \r\n   T₁ = _t1_ \r\n Case 2: \r\n  Number of bells: C₂ \r\n  Time the bells: \r\n   T₂ = _t2_ \r\n\n We know that: \r\n T₁/[C₁-1] = T₂/[C₂-1] \r\n C₂= [T₂.(C₁-1)/T₁] + 1 \r\n C₂= [_t2_.(_c1_-1)/_t1_] + 1 \r\n C₂ = [_t2_.(_c1-1_)/_t1_] + 1 \r\n C₂ = _c2_ \r\n Answer: _c2_ bells',
    },
    'es': {
      'title': 'Razonamiento Matemático',
      'problems':'Problemas de Práctica',
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
      'statementAge2':'Yo tengo _a_ veces tu edad. Si mi edad dentro de _b_ años es _c_ veces la edad que tú tenías hace _d_ años. ¿Qué edad tengo?',
      'solutionAge2': ' Tu edad actual: x años \r\n Pasado: \r\n  - Tu edad = x - _d_ \r\n Presente: \r\n  - Mi edad = _a_.x \r\n  - Tu edad = x \r\n Futuro: \r\n  - Mi edad = _a_.x + _b_ \r\n\n Por condición: \r\n _c_.(x - _d_) = _a_.x + _b_ \r\n _c_.x - _c.d_ = _a_.x + _b_ \r\n _(c-a)_.x = _c.d+b_ \r\n x = _x_ \r\n Mi edad actual = _a_.x = _a_._x_ \r\n Respuesta = _a.x_',
      'statementAge3': 'Yo tengo _a_ años y tú tienes _b_ años. ¿Dentro de cuántos años yo tendré _c_ veces tu edad?',
      'solutionAge3': ' Presente: \r\n  - Mi edad = _a_ años \r\n  - Tu edad = _b_ años \r\n Futuro: \r\n  - Mi edad = _a_ + x \r\n  - Tu edad = _b_ + x \r\n\n Por condición: \r\n _c_.(_b_ + x) = _a_ + x \r\n _c.b_ + _c_.x = _a_ + x \r\n _c_.x - x = _a-c.b_ \r\n _(c-1)_.x = _a-c.b_ \r\n\n Respuesta = _x_ años',
      'statementAge4':'Una persona tuvo su primer hijo a los _a_ años y segundo hijo a los _b_ años. A fines del año 2022 la suma de las edades de los hijos es _c_ años. ¿En qué año nació la persona?',
      'solutionAge4': ' Año nacimiento hijo 1: \r\n  - Persona = _a_ años \r\n  - Hijo 1 = 0 años \r\n Año nacimiento hijo 2: \r\n  - Persona = _b_ años \r\n  - Hijo 1 = _b-a_ \r\n  - Hijo 2 = 0 años \r\n Año 2022: \r\n  - Hijo 1 = _b-a_ + x \r\n  - Hijo 2 = x años \r\n\n Por condición: \r\n _b_ - _a_ + x + x = _c_ \r\n _b-a_ + 2.x = _c_ \r\n 2.x = _c+a-b_ \r\n x = _x_ \r\n Año de nacimiento de la persona: \r\n = 2022 - _b_ - x \r\n = 2022 - _b_ - _x_ \r\n Respuesta: Año _2022-b-x_',
      'statementMoving1': 'Dos móviles parten simultáneamente al encuentro. Si están separados por _a_ metros, y su velocidades son de _b_ m/s y de _c_ m/s, ¿Después de cuántos segundos se encontrarán?',
      'solutionMoving1': ' Velocidad del Móvil 1: \r\n  V₁ = _b_ m/s \r\n Velocidad del Móvil 2: \r\n  V₂ = _c_ m/s \r\n Distancia: _a_ m \r\n\n Tiempo de encuentro: \r\n T = Distancia/[V₁ + V₂] \r\n T = _a_/[_b_ + _c_] \r\n T = _a_/_[b+c]_ \r\n T = _t_ \r\n\n Respuesta: _t_ segundos ',
      'statementMoving2': 'Un móvil de velocidad _b_ m/s sigue a otro de velocidad _c_ m/s, si ambos van en el mismo sentido y están separados inicialmente por _a_ metros , ¿En qué tiempo logra alcanzarlo? ',
      'solutionMoving2': ' Velocidad del Móvil 1: \r\n  V₁ = _b_ m/s \r\n Velocidad del Móvil 2: \r\n  V₂ = _c_ m/s \r\n Distancia: _a_ m \r\n\n Tiempo de alcance: \r\n T = Distancia/[V₁ - V₂] \r\n T = _a_/[_b_ - _c_] \r\n T = _a_/_[b-c]_ \r\n T = _t_ \r\n\n Respuesta: _t_ segundos ',
      'statementMoving3': 'Un móvil de _a_ metros pasa a través de un túnel. Si el móvil tiene una velocidad de _b_ m/s, y demora _t_ segundos en cruzar el túnel, ¿Cuánto es la longitud de dicho túnel?',
      'solutionMoving3': ' Velocidad del Móvil: \r\n  V = _b_ m/s \r\n Longitud del Móvil: \r\n  L = _a_ m \r\n Tiempo para cruzar el túnel: \r\n  T = _t_ s \r\n Longitud del túnel: X \r\n Longitud total recorrida: \r\n  L + X = V.T \r\n  X = V.T - L \r\n  X = _b_._t_ - _a_ \r\n  X = _b.t_ - _a_ \r\n  X = _x_ \r\n\n Respuesta: _x_ metros',
      'statementMoving4': 'Un móvil recorre dos tramos, el primero a una velocidad de _b_ m/s y el segundo a _c_ m/s. Si el recorrido total fue de _a_ metros y el tiempo total _t_ segundos, ¿Cuánto tiempo duró el recorrido en el segundo tramo?',
      'solutionMoving4': ' Velocidad en el primer tramo: \r\n  V₁ = _b_ m/s \r\n Velocidad en el segundo tramo: \r\n  V₂ = _c_ m/s \r\n Tiempo en el primer tramo: T₁ \r\n Tiempo en el segundo tramo: T₂ \r\n Tiempo total: \r\n  T = _t_ = T₁ + T₂ \r\n Recorrido total: \r\n  L = _a_ = V₁.T₁ + V₂.T₂ \r\n\n Reemplazando: \r\n _a_ =  _b_.T₁ + _c_.T₂ \r\n _a_ =  _b_.(_t_ - T₂) + _c_.T₂ \r\n (_c_ - _b_).T₂ = _a_ - _b_._t_ \r\n (_c-b_).T₂ = _a_ - _b.t_ \r\n _c-b_.T₂ = _a-b.t_ \r\n T₂ = _t2_ \r\n Respuesta: _t2_ segundos ',
      'statementChrono1': '¿Qué ángulo en grados forman el horario y el minutero a las _h_:_m_?',
      'solutionChrono1': ' Hora: \r\n  H = _h_ \r\n Minutos: \r\n  M = _m_ \r\n Se sabe que: α = |30.H - 5,5.M| grados \r\n α = |30._h_ - 5,5._m_| \r\n α = |_30.h_ - _5,5.m_| \r\n α = |_30.h-5,5.m_| \r\n α = _a_ \r\n Respuesta: _a_ grados',
      'statementChrono2': '¿Cuántos minutos después de las _h_ en punto deben pasar, para que el ángulo entre el horario y el minutero sea _a_ grados por primera vez?',
      'solutionChrono2': ' Hora: \r\n  H = _h_ \r\n Ángulo: \r\n  α = _a_ grados \r\n Se sabe que: \r\n α = 30.H - 5,5.M grados \r\n _a_ = 30._h_ - 5,5.M \r\n _a_ = _30.h_ - 5,5.M \r\n 5,5.M = _30.h_ - _a_ \r\n 5,5.M = _30.h-a_ \r\n M = _m_ \r\n Respuesta: _m_ minutos',
      'statementChrono3': '¿Cuántos minutos después de las _h_ en punto deben pasar, para que el ángulo entre el horario y el minutero sea _a_ grados por segunda vez?',
      'solutionChrono3': ' Hora: \r\n  H = _h_ \r\n Ángulo: \r\n  α = _a_ grados \r\n Se sabe que: \r\n α = 5,5.M - 30.H grados \r\n _a_ = 5,5.M - 30._h_ \r\n _a_ = 5,5.M - _30.h_ \r\n 5,5.M = _30.h_ + _a_ \r\n 5,5.M = _30.h+a_ \r\n M = _m_ \r\n Respuesta: _m_ minutos',
      'statementChrono4': 'Un reloj que indica la hora por campanadas, demora _t1_ segundos en dar _c1_ campanadas. ¿Cuántas campanadas dará en _t2_ segundos?',
      'solutionChrono4': ' Caso 1: \r\n  Número de campanadas: \r\n   C₁ = _c1_ \r\n  Tiempo para dar las campanadas: \r\n   T₁ = _t1_ \r\n Caso 2: \r\n  Número de campanadas: C₂ \r\n  Tiempo para dar las campanadas: \r\n   T₂ = _t2_ \r\n\n Se sabe que: \r\n T₁/[C₁-1] = T₂/[C₂-1] \r\n C₂= [T₂.(C₁-1)/T₁] + 1 \r\n C₂= [_t2_.(_c1_-1)/_t1_] + 1 \r\n C₂ = [_t2_.(_c1-1_)/_t1_] + 1 \r\n C₂ = _c2_ \r\n Respuesta: _c2_ campanadas',
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
