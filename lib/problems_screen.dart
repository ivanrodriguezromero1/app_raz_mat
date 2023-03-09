import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:raz_mat/create.dart';
import 'package:raz_mat/models/problema.dart';
import 'my_app_localizations.dart';
import 'providers.dart';

class ProblemsScreen extends StatefulWidget {
   const ProblemsScreen({Key? key}) : super(key: key);
  @override
  ProblemsScreenState createState() => ProblemsScreenState(); 
}

class ProblemsScreenState extends State<ProblemsScreen> {
  int? selectedValue;
  int selectImage = 0;
  bool isRadioTileDisabled = false;
  bool buttonEnabled = true;

  String message = '';
  @override
  void initState() {
    super.initState();
     WidgetsBinding.instance.addPostFrameCallback((_) {
      for (String path in imageList) {
        precacheImage(AssetImage(path), context);
      }
    });
  }
  Future<void> precacheImages() async {
    for (var i = 0; i < imageList.length; i++) {
      await precacheImage(AssetImage(imageList[i]), context);
    }
  }
  @override
  Widget build(BuildContext context) {
    MyAppLocalizations localizations = MyAppLocalizations.of(context);
    DataModel dataModel = Provider.of<DataModel>(context, listen: false);
    checkInternetConnectivity(dataModel);
    return ChangeNotifierProvider(
      create: (context) => dataModel,
      child:
        MaterialApp(
          home: Scaffold(
            appBar: AppBar(
              title: Text(localizations.problems, 
                style: const TextStyle(color: Colors.white),),
                flexibleSpace: Image.asset(pathBar,
                  fit: BoxFit.cover,),
            ),
            body: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:const EdgeInsets.all(16),
                        child: Text(dataModel.enunciado,
                          style: const TextStyle(
                            fontSize: 20,),
                          ),
                        ),
                      const SizedBox(height: 30),
                       Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Column(
                              children: dataModel.alternativas.map((alternativa) {
                                return RadioListTile<int?>(
                                  title: Text(
                                    alternativa.toString(),
                                    style: const TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                  value: dataModel.alternativas.indexOf(alternativa),
                                  groupValue: selectedValue,
                                  onChanged: isRadioTileDisabled ? null : (value) {
                                    setState(() {
                                      selectedValue = value;
                                      // buttonEnabled = true;
                                    });
                                  },
                                );
                              }).toList(),
                            ),
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width/10,),
                          SizedBox(
                            width: MediaQuery.of(context).size.width/5,
                            child: Image.asset(
                              imageList[selectImage],
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                    Column(
                      children: [
                        Row(
                          children: const [SizedBox(height: 100)],
                        ),
                        ElevatedButton(
                          onPressed: buttonEnabled ? () {
                            setState(() {                              
                              if(selectedValue!=null){
                                selectedValue == dataModel.clave 
                                  ? selectImage = 1:selectImage = 2;                                
                              }
                            //  isRadioTileDisabled = true;
                            //  buttonEnabled = false;
                            });
                          }: null,
                          style:ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue[600],
                            padding: const EdgeInsets.fromLTRB(50.0,20.0,50.0,20.0),
                            shape:RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            elevation: 10,
                            shadowColor: Colors.black
                          ),
                          child: Text(localizations.check, 
                            style: const TextStyle(
                              fontSize: 16, fontFamily:'Roboto', ),)
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              floatingActionButton: FloatingActionButton(
                backgroundColor: Colors.blue[600],
                onPressed: () {
                  setState(() {
                    checkInternetConnectivity(dataModel);
                    dataModel.connected?(){
                    Problema p = createProblemSeries(localizations.statement, dataModel.difficulty);
                    dataModel.enunciado = p.enunciado;
                    dataModel.alternativas = p.alternativas;
                    dataModel.clave = p.clave;
                    selectedValue = null;
                    selectImage = 0;
                    }():ScaffoldMessenger.of(context).showSnackBar(
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
                    // isRadioTileDisabled = false;
                    // buttonEnabled = false;
                  });
                },
                child: const Icon(Icons.refresh),
              ),
              floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
              bottomNavigationBar:  Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(pathBar),
                    fit: BoxFit.cover,
                  ),
                ),
              child:BottomAppBar(
                shape: const CircularNotchedRectangle(),
                notchMargin: 8.0,
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
                        goToSettings(context);
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
