import 'package:raz_mat/viewmodels/topics/ages/solutions/solution_age1.dart';
import 'package:raz_mat/viewmodels/topics/ages/solutions/solution_age2.dart';
import 'package:raz_mat/viewmodels/topics/ages/solutions/solution_age3.dart';
import 'package:raz_mat/viewmodels/topics/ages/solutions/solution_age4.dart';
import 'package:raz_mat/viewmodels/topics/ages/statements/statement_age1.dart';
import 'package:raz_mat/viewmodels/topics/ages/statements/statement_age2.dart';
import 'package:raz_mat/viewmodels/topics/ages/statements/statement_age3.dart';
import 'package:raz_mat/viewmodels/topics/ages/statements/statement_age4.dart';
import 'package:raz_mat/viewmodels/topics/ages/theory/theory_ages.dart';
import 'package:raz_mat/viewmodels/topics/ages/tips/tip_age1.dart';
import 'package:raz_mat/viewmodels/topics/ages/tips/tip_age2.dart';
import 'package:raz_mat/viewmodels/topics/ages/tips/tip_age3.dart';
import 'package:raz_mat/viewmodels/topics/ages/tips/tip_age4.dart';
import 'package:raz_mat/viewmodels/topics/chrono/solutions/solution_chrono1.dart';
import 'package:raz_mat/viewmodels/topics/chrono/solutions/solution_chrono2.dart';
import 'package:raz_mat/viewmodels/topics/chrono/solutions/solution_chrono3.dart';
import 'package:raz_mat/viewmodels/topics/chrono/solutions/solution_chrono4.dart';
import 'package:raz_mat/viewmodels/topics/chrono/statements/statement_chrono1.dart';
import 'package:raz_mat/viewmodels/topics/chrono/statements/statement_chrono2.dart';
import 'package:raz_mat/viewmodels/topics/chrono/statements/statement_chrono3.dart';
import 'package:raz_mat/viewmodels/topics/chrono/statements/statement_chrono4.dart';
import 'package:raz_mat/viewmodels/topics/chrono/theory/theory_chrono.dart';
import 'package:raz_mat/viewmodels/topics/chrono/tips/tip_chrono1.dart';
import 'package:raz_mat/viewmodels/topics/chrono/tips/tip_chrono2.dart';
import 'package:raz_mat/viewmodels/topics/chrono/tips/tip_chrono3.dart';
import 'package:raz_mat/viewmodels/topics/chrono/tips/tip_chrono4.dart';
import 'package:raz_mat/viewmodels/topics/moving/solutions/solution_moving1.dart';
import 'package:raz_mat/viewmodels/topics/moving/solutions/solution_moving2.dart';
import 'package:raz_mat/viewmodels/topics/moving/solutions/solution_moving3.dart';
import 'package:raz_mat/viewmodels/topics/moving/solutions/solution_moving4.dart';
import 'package:raz_mat/viewmodels/topics/moving/statements/statement_moving1.dart';
import 'package:raz_mat/viewmodels/topics/moving/statements/statement_moving2.dart';
import 'package:raz_mat/viewmodels/topics/moving/statements/statement_moving3.dart';
import 'package:raz_mat/viewmodels/topics/moving/statements/statement_moving4.dart';
import 'package:raz_mat/viewmodels/topics/moving/theory/theory_moving.dart';
import 'package:raz_mat/viewmodels/topics/moving/tips/tip_moving1.dart';
import 'package:raz_mat/viewmodels/topics/moving/tips/tip_moving2.dart';
import 'package:raz_mat/viewmodels/topics/moving/tips/tip_moving3.dart';
import 'package:raz_mat/viewmodels/topics/moving/tips/tip_moving4.dart';
import 'package:raz_mat/viewmodels/topics/probability/solutions/solution_probability1.dart';
import 'package:raz_mat/viewmodels/topics/probability/solutions/solution_probability2.dart';
import 'package:raz_mat/viewmodels/topics/probability/solutions/solution_probability3.dart';
import 'package:raz_mat/viewmodels/topics/probability/solutions/solution_probability4.dart';
import 'package:raz_mat/viewmodels/topics/probability/statements/statement_probability1.dart';
import 'package:raz_mat/viewmodels/topics/probability/statements/statement_probability2.dart';
import 'package:raz_mat/viewmodels/topics/probability/statements/statement_probability3.dart';
import 'package:raz_mat/viewmodels/topics/probability/statements/statement_probability4.dart';
import 'package:raz_mat/viewmodels/topics/probability/theory/theory_probability.dart';
import 'package:raz_mat/viewmodels/topics/probability/tips/tip_probability1.dart';
import 'package:raz_mat/viewmodels/topics/probability/tips/tip_probability2.dart';
import 'package:raz_mat/viewmodels/topics/probability/tips/tip_probability3.dart';
import 'package:raz_mat/viewmodels/topics/probability/tips/tip_probability4.dart';
import 'package:raz_mat/viewmodels/topics/series/solutions/solution_serie_nth1.dart';
import 'package:raz_mat/viewmodels/topics/series/solutions/solution_serie_nth2.dart';
import 'package:raz_mat/viewmodels/topics/series/solutions/solution_serie_nth3.dart';
import 'package:raz_mat/viewmodels/topics/series/solutions/solution_serie_sum1.dart';
import 'package:raz_mat/viewmodels/topics/series/solutions/solution_serie_sum2.dart';
import 'package:raz_mat/viewmodels/topics/series/solutions/solution_serie_sum3.dart';
import 'package:raz_mat/viewmodels/topics/series/statements/statement_serie_nth.dart';
import 'package:raz_mat/viewmodels/topics/series/statements/statement_serie_sum.dart';
import 'package:raz_mat/viewmodels/topics/series/theory/theory_series.dart';
import 'package:raz_mat/viewmodels/topics/series/tips/tip_serie_nth1.dart';
import 'package:raz_mat/viewmodels/topics/series/tips/tip_serie_nth2.dart';
import 'package:raz_mat/viewmodels/topics/series/tips/tip_serie_nth3.dart';
import 'package:raz_mat/viewmodels/topics/series/tips/tip_serie_sum1.dart';
import 'package:raz_mat/viewmodels/topics/series/tips/tip_serie_sum2.dart';
import 'package:raz_mat/viewmodels/topics/series/tips/tip_serie_sum3.dart';

class MyWords {
  String title = 'Razonamiento Matemático';
  String settings = 'Opciones';
  String problems = 'Problemas';
  String series = 'Series';
  String ages = 'Edades';
  String moving = 'Móviles';
  String chronometry = 'Cronometría';
  String probability = 'Probabilidades';
  String easy = 'Fácil';
  String normal = 'Normal';
  String hard = 'Difícil';
  String difficulty = 'Dificultad';
  String close = 'Cerrar';
  String tip = 'Consejo';
  String check = 'COMPROBAR';
  String newProblem = 'NUEVO';
  String solution = 'VER SOLUCION';
  String answer = 'La respuesta es';
  String titleSolution = 'SOLUCION';
  String theorySeries = TheorySeries.text;
  String statementSerieNth = StatementSerieNth.text;
  String statementSerieSum = StatementSerieSum.text;
  String solutionSerieNth1 = SolutionSerieNth1.text;
  String solutionSerieSum1 = SolutionSerieSum1.text;
  String solutionSerieNth2 = SolutionSerieNth2.text;
  String solutionSerieSum2 = SolutionSerieSum2.text;
  String solutionSerieNth3 = SolutionSerieNth3.text;
  String solutionSerieSum3 = SolutionSerieSum3.text;
  String tipSerieNth1 = TipSerieNth1.text;
  String tipSerieSum1 = TipSerieSum1.text;
  String tipSerieNth2 = TipSerieNth2.text;
  String tipSerieSum2 = TipSerieSum2.text;
  String tipSerieNth3 = TipSerieNth3.text;
  String tipSerieSum3 = TipSerieSum3.text;
  String theoryAges = TheoryAges.text;
  String statementAge1 = StatementAge1.text;
  String solutionAge1 = SolutionAge1.text;
  String statementAge2 = StatementAge2.text;
  String solutionAge2 = SolutionAge2.text;
  String statementAge3 = StatementAge3.text;
  String solutionAge3 = SolutionAge3.text;
  String statementAge4 = StatementAge4.text;
  String solutionAge4 = SolutionAge4.text;
  String tipAge1 = TipAge1.text;
  String tipAge2 = TipAge2.text;
  String tipAge3 = TipAge3.text;
  String tipAge4 = TipAge4.text;
  String theoryMoving = TheoryMoving.text;
  String statementMoving1 = StatementMoving1.text;
  String solutionMoving1 = SolutionMoving1.text;
  String statementMoving2 = StatementMoving2.text;
  String solutionMoving2 = SolutionMoving2.text;
  String statementMoving3 = StatementMoving3.text;
  String solutionMoving3 = SolutionMoving3.text;
  String statementMoving4 = StatementMoving4.text;
  String solutionMoving4 = SolutionMoving4.text;
  String tipMoving1 = TipMoving1.text;
  String tipMoving2 = TipMoving2.text;
  String tipMoving3 = TipMoving3.text;
  String tipMoving4 = TipMoving4.text;
  String theoryChrono = TheoryChrono.text;
  String statementChrono1 = StatementChrono1.text;
  String solutionChrono1 = SolutionChrono1.text;
  String statementChrono2 = StatementChrono2.text;
  String solutionChrono2 = SolutionChrono2.text;
  String statementChrono3 = StatementChrono3.text;
  String solutionChrono3 = SolutionChrono3.text;
  String statementChrono4 = StatementChrono4.text;
  String solutionChrono4 = SolutionChrono4.text;
  String tipChrono1 = TipChrono1.text;
  String tipChrono2 = TipChrono2.text;
  String tipChrono3 = TipChrono3.text;
  String tipChrono4 = TipChrono4.text;
  String theoryProbability = TheoryProbability.text;
  String statementProbability1 = StatementProbability1.text;
  String statementProbability2 = StatementProbability2.text;
  String statementProbability3 = StatementProbability3.text;
  String statementProbability4 = StatementProbability4.text;
  String tipProbability1 = TipProbability1.text;
  String tipProbability2 = TipProbability2.text;
  String tipProbability3 = TipProbability3.text;
  String tipProbability4 = TipProbability4.text;
  String solutionProbability1 = SolutionProbability1.text;
  String solutionProbability2 = SolutionProbability2.text;
  String solutionProbability3 = SolutionProbability3.text;
  String solutionProbability4 = SolutionProbability4.text;
}