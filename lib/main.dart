import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:raz_mat/viewmodels/createProblemSeries.dart';
import 'package:raz_mat/models/tipo.dart';
import 'package:raz_mat/view/problems_screen.dart';
import 'package:raz_mat/viewmodels/change_page.dart';
import 'package:raz_mat/viewmodels/constants.dart';
import 'models/problema.dart';
import 'viewmodels/my_app_localizations.dart';
import 'viewmodels/providers.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MobileAds.instance.initialize();
  runApp(
   ChangeNotifierProvider( 
        create: (context)=> DataModel(),
        child: const MyApp(),
      ),
  );
}
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
      // locale: const Locale('en', ''),
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
  void goToProblems(DataModel dataModel,MyAppLocalizations localizations ) {
    checkInternetConnectivity(dataModel);
    Tipo series = getTipo(localizations);
    Problema p = createProblemSeries(series, dataModel.difficulty);
    dataModel.enunciado = p.enunciado;
    dataModel.alternativas = p.alternativas;
    dataModel.clave = p.clave;
    dataModel.solucion = p.solucion;
    dataModel.connected 
    ? changePageScale(context,const ProblemsScreen())
    : ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(localizations.disconnected),
        action: SnackBarAction(
          label: localizations.close,
          textColor: Colors.white,
          onPressed: () {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    MyAppLocalizations localizations = MyAppLocalizations.of(context);
    DataModel dataModel = Provider.of<DataModel>(context, listen: false);
    checkInternetConnectivity(dataModel);
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(localizations.title,
            style: const TextStyle(color: Colors.white),)
          ),
        automaticallyImplyLeading: false,
        flexibleSpace: Image.asset(
          pathBar,
          fit: BoxFit.cover,
        ),
      ),
      body: 
      Stack(
        children: [
          Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.7,
            child: ListView(
              children: [
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
                  leading: const Icon(Icons.psychology),
                  title: Text(localizations.topic1,
                    style: const TextStyle(fontSize: 20),
                    ),
                  onTap: (){
                      goToProblems(dataModel,localizations);
                    }           
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
      ),      
      ],
      ),
      bottomNavigationBar:  Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(pathBar),
                  fit: BoxFit.cover,
                ),
              ),
              child:BottomAppBar(
                color: Colors.transparent,
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width/2,
                    height: kBottomNavigationBarHeight,
                    child: IconButton(
                      icon: const Icon(Icons.home,color: Colors.white),
                      onPressed: (){
                        if (Navigator.canPop(context)) {
                          Navigator.pop(context);
                        }
                      }
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width/2,
                    height: kBottomNavigationBarHeight,
                    child: IconButton(
                      icon: const Icon(Icons.settings,color: Colors.white),
                      onPressed:(){
                        goToSettings(context);
                      }
                    ),
                  ),
                ],
              ),
            ),
          ),
    );
  }
}
