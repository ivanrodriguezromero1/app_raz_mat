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
      'topic1':'Successions',
      'topic2':'Ages',
      'topic3':'Kinship Relations',
      'topic4':'Chronometry',
      'topic5':'Counting',
      'difficulty':'Difficulty',
      'easy': 'Easy',
      'normal':'Normal',
      'hard':'Hard'
    },
    'es': {
      'title': 'Razonamiento Matemático',
      'problems':'Problemas de Práctica',
      'settings': 'Opciones',
      'topic1':'Sucesiones',
      'topic2':'Edades',
      'topic3':'Relaciones de Parentesco',
      'topic4':'Cronometría',
      'topic5':'Conteo',
      'difficulty':'Dificultad',
      'easy': 'Fácil',
      'normal':'Normal',
      'hard':'Difícil'
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
