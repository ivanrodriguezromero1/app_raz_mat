import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/viewmodels/change_page.dart';
import '/viewmodels/my_words.dart';
import '/viewmodels/constants.dart';
import '/viewmodels/providers.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);
  @override
  SettingsScreenState createState() => SettingsScreenState(); 
}

class SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    MyWords myWords = MyWords();
    DataModel dataModel = Provider.of<DataModel>(context, listen: false);
    return ChangeNotifierProvider(
      create: (context) => DataModel(),
      child:
        MaterialApp(
          home: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: const Icon(Icons.settings),
                onPressed: () {
                },
              ),
              title: Text(myWords.settings, 
                style: const TextStyle(color: Colors.white),),
                flexibleSpace: Image.asset(pathBar,
                  fit: BoxFit.cover,),
            ),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:const EdgeInsets.all(20),
                  child: Text( myWords.difficulty,
                    style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                  ),
                ),
                RadioListTile<int?>(
                  title: Text(myWords.easy,
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
                  title: Text(myWords.normal,
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
                  title: Text(myWords.hard,
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
                        goToHome(context);
                      }
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width/2,
                    height: kBottomNavigationBarHeight,
                    child: IconButton(
                      icon: const Icon(Icons.settings,color: Colors.white),
                      onPressed:(){
                        Navigator.pop(context);
                      }
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
