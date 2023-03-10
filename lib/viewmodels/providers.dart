import 'dart:math';

import 'package:flutter/material.dart';
import 'package:connectivity/connectivity.dart';
import 'package:raz_mat/view/solutions_screen.dart';
import '../models/tipo.dart';
import 'my_app_localizations.dart';
import '../view/settings_screen.dart';
import '../main.dart';

class DataModel extends ChangeNotifier {
  int? _selectedDifficulty = 0;
  int? get difficulty => _selectedDifficulty;
  set difficulty(int? value) {
      _selectedDifficulty = value;
      notifyListeners();
  }
  bool _connected = false;
  bool get connected => _connected;
  set connected(bool value){
    _connected = value;
    notifyListeners();
  }
  String _enunciado = '';
  String get enunciado => _enunciado;
  set enunciado(String value){
    _enunciado = value;
    notifyListeners();
  }
  List<int> _alternativas = [];
  List<int> get alternativas => _alternativas;
  set alternativas(List<int> value){
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
}

Tipo getTipo(MyAppLocalizations localizations){
    Random random = Random();
    int i = random.nextInt(2);
    List<String> statements = [
        localizations.statementSerieNth, 
        localizations.statementSerieSum
      ];
    return Tipo(statements[i], i);
}

Future<void> checkInternetConnectivity(DataModel dataModel) async {
  var connectivityResult = await (Connectivity().checkConnectivity());
  if (connectivityResult == ConnectivityResult.mobile) {
    dataModel.connected = true;
  } else if (connectivityResult == ConnectivityResult.wifi) {
    dataModel.connected = true;
  } else{
    dataModel.connected = false;
  }
}