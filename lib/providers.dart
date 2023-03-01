
import 'package:flutter/material.dart';

class DataModel extends ChangeNotifier {
  final String _pathBar = 'assets/images/AppBar_Background.png';
  String get pathBar => _pathBar;
  int? _selectedDifficulty = 0;
  int? get difficulty => _selectedDifficulty;
  set difficulty(int? value) {
      _selectedDifficulty = value;
      notifyListeners();
  }
}