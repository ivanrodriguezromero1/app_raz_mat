import 'package:flutter/material.dart';
import 'package:connectivity/connectivity.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

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