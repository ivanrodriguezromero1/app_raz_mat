import 'package:flutter/material.dart';
import 'package:connectivity/connectivity.dart';
import 'settings_screen.dart';
import 'main.dart';

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
}

const String pathBar = 'assets/images/AppBar_Background.png';
List<String> imageList = ['assets/images/Vacio.png', 'assets/images/Check.png', 'assets/images/Error.png'];
MaterialColor myColor = const MaterialColor(
  0x00FFFFFF,
  <int, Color>{
    50: Color(0x00FFFFFF),
    100: Color(0x00FFFFFF),
    200: Color(0x00FFFFFF),
    300: Color(0x00FFFFFF),
    400: Color(0x00FFFFFF),
    500: Color(0x00FFFFFF),
    600: Color(0x00FFFFFF),
    700: Color(0x00FFFFFF),
    800: Color(0x00FFFFFF),
    900: Color(0x00FFFFFF),
  },
);

void changePageSlide(BuildContext context, StatefulWidget page, double x){
  Navigator.of(context).push(
    PageRouteBuilder(
      transitionDuration: const Duration(milliseconds: 350),
      pageBuilder: (_, __, ___) => page,
      transitionsBuilder: (_, Animation<double> animation, __, Widget child) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: Offset(x, 0.0),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        );
      },
    ),
  );
}
void changePageScale(BuildContext context, StatefulWidget page){
  Navigator.of(context).push(
    PageRouteBuilder(
      transitionDuration: const Duration(milliseconds: 400),
      pageBuilder: (_, __, ___) => page,
      transitionsBuilder: (_, Animation<double> animation, __, Widget child) {
        return ScaleTransition(
          scale: Tween<double>(
            begin: 0.5,
            end: 1.0,
          ).animate(animation),
          child: child,
      );
      },
    ),
  );
}
void goToSettings(BuildContext context) {
    changePageSlide(context, const SettingsScreen(),1.0);
}
void goToHome(BuildContext context) {
  changePageSlide(context,const MyHomePage(),-1.0);
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