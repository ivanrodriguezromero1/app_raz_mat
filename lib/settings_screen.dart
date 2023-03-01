import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'my_app_localizations.dart';
import 'main.dart';
import 'providers.dart';

class SettingsScreen extends StatefulWidget {
   const SettingsScreen({Key? key}) : super(key: key);
  @override
  SettingsScreenState createState() => SettingsScreenState(); 
}

class SettingsScreenState extends State<SettingsScreen> {

  @override
  Widget build(BuildContext context) {
    MyAppLocalizations localizations = MyAppLocalizations.of(context);
    DataModel dataModel = Provider.of<DataModel>(context, listen: false);
    void goToHome() {
      Navigator.of(context).push(
      PageRouteBuilder(
        transitionDuration: const Duration(milliseconds: 400),
        pageBuilder: (_, __, ___) => const MyHomePage(),
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
    return ChangeNotifierProvider(
      create: (context) => DataModel(),
      child:
        MaterialApp(
          home: Scaffold(
            appBar: AppBar(
              title: Text(localizations.settings, 
                style: const TextStyle(color: Colors.white),),
                flexibleSpace: Image.asset(dataModel.pathBar,
                  fit: BoxFit.cover,),
            ),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:const EdgeInsets.all(20),
                  child: Text( localizations.difficulty,
                    style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                  ),
                ),
                RadioListTile<int?>(
                  title: Text(localizations.easy,
                    style: const TextStyle(fontSize: 20),),
                  value: 0,
                  groupValue: dataModel.difficulty,
                  onChanged: (value) {
                    setState(() {
                      dataModel.difficulty = value;
                    });
                  },
                ),
                RadioListTile<int?>(
                  title: Text(localizations.normal,
                    style: const TextStyle(fontSize: 20),),
                  value: 1,
                  groupValue: dataModel.difficulty,
                  onChanged: (value) {
                    setState(() {
                      dataModel.difficulty = value;
                    });
                  },
                ),
                RadioListTile<int?>(
                  title: Text(localizations.hard,
                    style: const TextStyle(fontSize: 20),),
                  value: 2,
                  groupValue: dataModel.difficulty,
                  onChanged: (value) {
                    setState(() {
                      dataModel.difficulty = value;
                    });
                  },
                ),
              ],
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
                      icon: const Icon(Icons.home,color: Colors.white),
                      onPressed: goToHome,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
