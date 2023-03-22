import 'package:flutter/material.dart';
import 'package:connectivity/connectivity.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:raz_mat/viewmodels/my_app_localizations.dart';
import '../models/problema.dart';
import 'create_problem_ages.dart';
import 'create_problem_chrono.dart';
import 'create_problem_moving.dart';
import 'create_problem_series.dart';

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
  bool _isBannerAdProblemReady = false;
  bool get isBannerAdProblemReady => _isBannerAdProblemReady;
  set isBannerAdProblemReady(bool value){
    _isBannerAdProblemReady = value;
    notifyListeners();
  }
  BannerAd _bannerAdProblem =  BannerAd(
        adUnitId: '',
        size: AdSize.banner,
        request: const AdRequest(),
        listener: BannerAdListener(
          onAdLoaded: (_) {},
          onAdFailedToLoad: (ad, error) {
            ad.dispose();
          },
        ),
      );
  BannerAd get bannerAdProblem => _bannerAdProblem;
  set bannerAdProblem(BannerAd value){
    _bannerAdProblem = value;
    notifyListeners();
  }
  bool _isBannerAdSolutionReady = false;
  bool get isBannerAdSolutionReady => _isBannerAdSolutionReady;
  set isBannerAdSolutionReady(bool value){
    _isBannerAdSolutionReady = value;
    notifyListeners();
  }
  BannerAd _bannerAdSolution =  BannerAd(
        adUnitId: '',
        size: AdSize.banner,
        request: const AdRequest(),
        listener: BannerAdListener(
          onAdLoaded: (_) {},
          onAdFailedToLoad: (ad, error) {
            ad.dispose();
          },
        ),
      );
  BannerAd get bannerAdSolution => _bannerAdSolution;
  set bannerAdSolution(BannerAd value){
    _bannerAdSolution = value;
    notifyListeners();
  }
  bool _isBannerAdTheoryReady = false;
  bool get isBannerAdTheoryReady => _isBannerAdTheoryReady;
  set isBannerAdTheoryReady(bool value){
    _isBannerAdTheoryReady = value;
    notifyListeners();
  }
  BannerAd _bannerAdTheory =  BannerAd(
        adUnitId: '',
        size: AdSize.banner,
        request: const AdRequest(),
        listener: BannerAdListener(
          onAdLoaded: (_) {},
          onAdFailedToLoad: (ad, error) {
            ad.dispose();
          },
        ),
      );
  BannerAd get bannerAdTheory => _bannerAdTheory;
  set bannerAdTheory(BannerAd value){
    _bannerAdTheory = value;
    notifyListeners();
  }
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
Problema getProblemByOption(DataModel dataModel, MyAppLocalizations localizations){
  switch(dataModel.option){
    case 1:
      return createProblemSeries(localizations, dataModel.difficulty);
    case 2:
      return createProblemAges(localizations, dataModel.difficulty);
    case 3:
      return createProblemMoving(localizations, dataModel.difficulty);
    default:
      return createProblemChrono(localizations, dataModel.difficulty);
  }
}
void createProblem(DataModel dataModel, MyAppLocalizations localizations){
  Problema problema = getProblemByOption(dataModel, localizations);
  dataModel.enunciado = problema.enunciado;
  dataModel.alternativas = problema.alternativas;
  dataModel.clave = problema.clave;
  dataModel.solucion = problema.solucion;
}
String getTitleByOption(DataModel dataModel, MyAppLocalizations localizations){
  switch(dataModel.option){
    case 1:
      return localizations.topic1;
    case 2:
      return localizations.topic2;
    case 3:
      return localizations.topic3;
    case 4:
      return localizations.topic4;
    default:
      return localizations.topic5;
  }
}
String getTheoryByOption(DataModel dataModel, MyAppLocalizations localizations){
  switch(dataModel.option){
    case 1:
      return localizations.topic1;
    case 2:
      return localizations.topic2;
    case 3:
      return localizations.topic3;
    case 4:
      return localizations.topic4;
    default:
      return localizations.topic5;
  }
}