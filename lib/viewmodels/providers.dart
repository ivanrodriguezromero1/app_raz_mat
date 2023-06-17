import 'package:flutter/material.dart';
import 'package:raz_mat/viewmodels/my_words.dart';
import '/models/problema.dart';
import 'create_problem_ages.dart';
import 'create_problem_chrono.dart';
import 'create_problem_moving.dart';
import 'create_problem_series.dart';
import 'create_problem_probability.dart';

class DataModel extends ChangeNotifier {
  int? _selectedDifficulty = 0;
  int? get difficulty => _selectedDifficulty;
  set difficulty(int? value) {
      _selectedDifficulty = value;
      notifyListeners();
  }
  String _enunciado = '';
  String get enunciado => _enunciado;
  set enunciado(String value){
    _enunciado = value;
    notifyListeners();
  }
  List<String> _alternativas = [];
  List<String> get alternativas => _alternativas;
  set alternativas(List<String> value){
    _alternativas = value;
    notifyListeners();
  }
  int _clave = 0;
  int get clave => _clave;
  set clave(int value){
    _clave = value;
    notifyListeners();
  }
  String _solucion = '';
  String get solucion => _solucion;
  set solucion(String value){
    _solucion = value;
    notifyListeners();
  }
  String _teoria = '';
  String get teoria => _teoria;
  set teoria(String value){
    _teoria = value;
    notifyListeners();
  }
  int _option = 0;
  int get option => _option;
  set option(int value){
    _option = value;
    notifyListeners();
  }
  int _tipo = 0;
  int get tipo => _tipo;
  set tipo(int value){
    _tipo = value;
    notifyListeners();
  }
}

Problema getProblemByOption(DataModel dataModel, MyWords myWords){
  switch(dataModel.option){
    case 1:
      return createProblemSeries(myWords, dataModel);
    case 2:
      return createProblemAges(myWords, dataModel);
    case 3:
      return createProblemMoving(myWords, dataModel);
    case 4:
      return createProblemChrono(myWords, dataModel);
    default:
      return createProblemProbability(myWords, dataModel);
  }
}
void createProblem(DataModel dataModel, MyWords myWords){
  Problema problema = getProblemByOption(dataModel, myWords);
  dataModel.enunciado = problema.enunciado;
  dataModel.alternativas = problema.alternativas;
  dataModel.clave = problema.clave;
  dataModel.solucion = problema.solucion;
}
String getTitleByOption(DataModel dataModel, MyWords myWords){
  switch(dataModel.option){
    case 1:
      return myWords.series;
    case 2:
      return myWords.ages;
    case 3:
      return myWords.moving;
    case 4:
      return myWords.chronometry;
    default:
      return myWords.probability;
  }
}
String getTheoryByOption(DataModel dataModel, MyWords myWords){
  switch(dataModel.option){
    case 1:
      return myWords.theorySeries;
    case 2:
      return myWords.theoryAges;
    case 3:
      return myWords.theoryMoving;
    case 4:
      return myWords.theoryChrono;
    default:
      return myWords.theoryProbability;
  }
}
String getTipByOptionAndType(DataModel dataModel, MyWords myWords){
  switch(dataModel.option){
    case 1:
      switch(dataModel.tipo){
        case 1:
          return myWords.tipSerieNth1;
        case 2:
          return myWords.tipSerieSum1;
        case 3:
          return myWords.tipSerieNth2;
        case 4:
          return myWords.tipSerieSum2;
        case 5:
          return myWords.tipSerieNth3;
        default:
          return myWords.tipSerieSum3;
      }
    case 2:
      switch(dataModel.tipo){
        case 1:
          return myWords.tipAge1;
        case 2:
          return myWords.tipAge2;
        case 3:
          return myWords.tipAge3;
        default:
          return myWords.tipAge4;
      }
    case 3:
      switch(dataModel.tipo){
        case 1:
          return myWords.tipMoving1;
        case 2:
          return myWords.tipMoving2;
        case 3:
          return myWords.tipMoving3;
        default:
          return myWords.tipMoving4;
      }
    case 4:
      switch(dataModel.tipo){
        case 1:
          return myWords.tipChrono1;
        case 2:
          return myWords.tipChrono2;
        case 3:
          return myWords.tipChrono3;
        default:
          return myWords.tipChrono4;
      }
    default:
      switch(dataModel.tipo){
        case 1:
          return myWords.tipProbability1;
        case 2:
          return myWords.tipProbability2;
        case 3:
          return myWords.tipProbability3;
        default:
          return myWords.tipProbability4;
      }
  }
}