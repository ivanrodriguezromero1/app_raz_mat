
import 'package:flutter/material.dart';

class DataModel extends ChangeNotifier {
  int? _selectedDifficulty = 0;
  int? get difficulty => _selectedDifficulty;
  set difficulty(int? value) {
      _selectedDifficulty = value;
      notifyListeners();
  }
}

const String pathBar = 'assets/images/AppBar_Background.png';

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

void changePage(BuildContext context, StatefulWidget page){
    Navigator.of(context).push(
      PageRouteBuilder(
        transitionDuration: const Duration(milliseconds: 400),
        pageBuilder: (_, __, ___) => page,
        transitionsBuilder: (_, Animation<double> animation, __, Widget child) {
          return SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(1.0, 0.0),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          );
        },
      ),
    );
  }
