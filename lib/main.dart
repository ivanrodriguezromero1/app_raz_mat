import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:raz_mat/problems.dart';
import 'my_app_localizations.dart';
import 'settings_screen.dart';
import 'providers.dart';

void main() {
 runApp(
    ChangeNotifierProvider(
      create: (context) => DataModel(),
      child: const MyApp(),
    ),
  );
}
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

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RM',
      localizationsDelegates:const [
        MyAppLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales:const [
        Locale('en', ''),
        Locale('es', ''),
      ],
      theme: ThemeData(
        primarySwatch: myColor,
        
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void goToSettings() {
    Navigator.of(context).push(
      PageRouteBuilder(
        transitionDuration: const Duration(milliseconds: 400),
        pageBuilder: (_, __, ___) => const SettingsScreen(),
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
  void goToProblems() {
    Navigator.of(context).push(
      PageRouteBuilder(
        transitionDuration: const Duration(milliseconds: 400),
        pageBuilder: (_, __, ___) => const ProblemsScreen(),
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
  @override
  Widget build(BuildContext context) {
    MyAppLocalizations localizations = MyAppLocalizations.of(context);
    DataModel dataModel = Provider.of<DataModel>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(localizations.title,
            style: const TextStyle(color: Colors.white),)
          ),
        automaticallyImplyLeading: false,
        flexibleSpace: Image.asset(
          dataModel.pathBar,
          fit: BoxFit.cover,
        ),
      ),
      body: Stack(
        children: [
          Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.7,
            child: ListView(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                child:ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 10,vertical: 7.0),
                  leading: const Icon(Icons.psychology),
                  title: Text(localizations.topic1,
                    style: const TextStyle(fontSize: 20),
                    ),
                  onTap: goToProblems                  
                ),
                ),
                const SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                child:ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 10,vertical: 7.0),
                  leading: const Icon(Icons.face_4),
                  title: Text(localizations.topic2,
                    style: const TextStyle(fontSize: 20),
                    ),
                  onTap: () {
                    // Lógica para la opción 2
                  },
                ),
                ),
                const SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                child:ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 10,vertical: 7.0),
                  leading: const Icon(Icons.family_restroom),
                  title: Text(localizations.topic3,
                    style: const TextStyle(fontSize: 20),
                    ),
                  onTap: () {
                    // Lógica para la opción 3
                  },
                ),
                ),
                const SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                child:ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 10,vertical: 7.0),
                  leading: const Icon(Icons.av_timer),
                  title: Text(localizations.topic4,
                    style: const TextStyle(fontSize: 20),
                    ),
                  onTap: () {
                    // Lógica para la opción 4
                  },
                ),
                ),
                const SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                child:ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 10,vertical: 7.0),
                  leading: const Icon(Icons.grid_4x4),
                  title: Text(localizations.topic5,
                    style: const TextStyle(fontSize: 20),
                    ),
                  onTap: () {
                    // Lógica para la opción 5
                  },
                ),
                ),
              ],
            ),
          ),
      ),]
      ),
      bottomNavigationBar:  Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(dataModel.pathBar),
            fit: BoxFit.cover,
          ),
        ),
        child:BottomAppBar(
          color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: kBottomNavigationBarHeight,
                child: IconButton(
                  icon: const Icon(Icons.settings,color: Colors.white),
                  onPressed: goToSettings,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
