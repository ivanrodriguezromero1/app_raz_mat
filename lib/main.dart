import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import '/viewmodels/change_page.dart';
import '/viewmodels/constants.dart';
import '/view/widgets.dart';
import 'viewmodels/my_words.dart';
import '/viewmodels/providers.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
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
      // localizationsDelegates:const [
      //   MyAppLocalizationsDelegate(),
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      // ],
      // supportedLocales:const [
      //   Locale('en', ''),
      //   Locale('es', ''),
      // ],
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
  @override
  Widget build(BuildContext context) {
    MyWords myWords = MyWords();
    DataModel dataModel = Provider.of<DataModel>(context, listen: false);
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text(myWords.title,
            style: const TextStyle(color: Colors.white),)
          ),
          automaticallyImplyLeading: false,
          flexibleSpace: Image.asset(
            pathBar,
            fit: BoxFit.cover,
          ),
        ),
        body: 
          Container(
            color: Colors.white, 
            child:Stack(
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.8,
                    child: ListView(
                      children: [
                        const SizedBox(height: 5),
                        getItem(context, dataModel, myWords,
                          iconosItems[0],
                          myWords.series,
                          opcion:1),
                        const SizedBox(height: 15),
                        getItem(context, dataModel, myWords, 
                          iconosItems[1],
                          myWords.ages,
                          opcion:2),
                        const SizedBox(height: 15),
                        getItem(context, dataModel, myWords, 
                          iconosItems[2],
                          myWords.moving,
                          opcion:3),
                        const SizedBox(height: 15),
                        getItem(context, dataModel, myWords, 
                          iconosItems[3],
                          myWords.chronometry,
                          opcion:4),
                        const SizedBox(height: 15),
                        getItem(context, dataModel, myWords, 
                          iconosItems[4],
                          myWords.probability,
                          opcion:5),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
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
