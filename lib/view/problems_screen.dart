import 'dart:async';
import 'dart:math';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';
import 'package:raz_mat/view/widgets.dart';
import '../viewmodels/change_page.dart';
import '../viewmodels/globals.dart';
import '../viewmodels/my_app_localizations.dart';
import '../viewmodels/constants.dart';
import '../viewmodels/providers.dart';

class ProblemsScreen extends StatefulWidget {
   const ProblemsScreen({Key? key}) : super(key: key);
  @override
  ProblemsScreenState createState() => ProblemsScreenState(); 
}

class ProblemsScreenState extends State<ProblemsScreen> {
  int? selectedValue;
  int selectImage = 0;
  bool isRadioTileDisabled = false;
  bool viewCheck = true;
  int elapsedSeconds = 0;
  bool isRunning = false;
  List<bool> areKeys = [false,false,false,false];
  StreamSubscription<int>? streamSubscription;
  
void startTimer() {
    if (isRunning) return;
    isRunning = true;
    streamSubscription = timerStream(1).listen((_) {
      setState(() {
        elapsedSeconds++;
      });
    });
  }

  void pauseTimer() {
    if (!isRunning) return;
    isRunning = false;
    streamSubscription?.cancel();
  }

  void resetTimer() {
    pauseTimer();
    setState(() {
      elapsedSeconds = 0;
    });
  }
  Stream<int> timerStream(int seconds) {
    return Stream.periodic(Duration(seconds: seconds), (i) => i);
  }
  String formatElapsedTime(int elapsedSeconds) {
    int hours = elapsedSeconds ~/ 3600;
    int minutes = (elapsedSeconds % 3600) ~/ 60;
    int seconds = elapsedSeconds % 60;
    return '${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      for (String path in imageList) {
        precacheImage(AssetImage(path), context);
      }
    });
    startTimer();
  }
  @override
  Widget build(BuildContext context) {
    MyAppLocalizations localizations = MyAppLocalizations.of(context);
    DataModel dataModel = Provider.of<DataModel>(context, listen: false);
    String title = getTitleByOption(dataModel, localizations);
    checkInternetConnectivity(dataModel);
    return ChangeNotifierProvider(
      create: (context) => dataModel,
      child:
        MaterialApp(
          home: Scaffold(
            appBar: AppBar(
              title:  Row(
                children: [
                  Icon(iconosItems[dataModel.option-1]),
                  const SizedBox(width: 9),
                  Text(title,
                    style: const TextStyle(color: Colors.white,
                    fontSize: 18),
                    ),
                  const SizedBox(width: 11),
                  IconButton(
                    icon: const Icon(Icons.play_arrow),
                    onPressed: startTimer,
                    iconSize: 18,
                  ),
                  IconButton(
                    icon: const Icon(Icons.pause),
                    onPressed: pauseTimer,
                    iconSize: 18,
                  ),
                  IconButton(
                    icon: const Icon(Icons.refresh),
                    onPressed: resetTimer,
                    iconSize: 18,
                  ),
                  Text(formatElapsedTime(elapsedSeconds),
                  style: const TextStyle(fontSize: 16),),
                ],
              ),
              flexibleSpace: Image.asset(pathBar,
                fit: BoxFit.cover,),
            ),
            body: SingleChildScrollView(child:Container(
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:const EdgeInsets.fromLTRB(35,20,35,0),
                        child: Text(dataModel.enunciado,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey.shade800),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,                          
                          children: [
                            const SizedBox(width: 35.0),
                            Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.cyan.shade700,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: IconButton(
                                icon: Icon(Icons.filter_alt, color: Colors.cyan.shade800),
                                iconSize: 20,
                                onPressed: () {
                                  if(areKeys.every((value) => value == false) && viewCheck){
                                    List<int> randomIndices = [];
                                    do {
                                      int randomIndex = Random().nextInt(dataModel.alternativas.length);
                                      if (randomIndex != dataModel.clave && !randomIndices.contains(randomIndex)) {
                                        randomIndices.add(randomIndex);
                                      }
                                    } while (randomIndices.length < 2);
                                    setState(() {
                                      areKeys[randomIndices[0]] = true;
                                      areKeys[randomIndices[1]] = true;
                                      if(selectedValue == randomIndices[0] 
                                          || selectedValue == randomIndices[1]){
                                            selectedValue = null;
                                      }
                                    });
                                  }
                                },
                              ),
                            ),
                            const SizedBox(width: 8.0),
                            Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.yellow.shade700,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: IconButton(
                                icon: Icon(Icons.tips_and_updates, color: Colors.yellow.shade800),
                                iconSize: 20,
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return showTip(context, localizations);
                                    },
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                        Row(
                         children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(10,0,0,0),
                            width: MediaQuery.of(context).size.width / 2,
                            child: Column(
                              children: dataModel.alternativas.map((alternativa) {
                                int i =  dataModel.alternativas.indexOf(alternativa);
                                String literal = literales[i];
                                return RadioListTile<int?>(
                                  title: Text(
                                    '$literal) $alternativa',
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: areKeys[i]?Colors.grey.shade500 : Colors.yellow.shade900,
                                      fontWeight: FontWeight.bold,
                                      decoration: areKeys[i]?TextDecoration.lineThrough:TextDecoration.none,
                                    ),
                                  ),
                                  value: i,
                                  groupValue: selectedValue,
                                  onChanged: isRadioTileDisabled || areKeys[i] 
                                    ? null : (value) {
                                      setState(() {
                                        selectedValue = value;
                                      });
                                    },
                                );
                              }).toList(),
                            ),
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width/10,),
                          Column(
                            children:[
                              SizedBox(
                                width: MediaQuery.of(context).size.width/5,
                                child: Image.asset(
                                  imageList[selectImage],
                                  fit: BoxFit.fill,
                                ),
                              ),
                              const SizedBox(height: 20,),
                              !viewCheck
                                ?
                                  Text(localizations.answer,
                                    style: TextStyle(fontSize: 18,
                                    color: (selectedValue == dataModel.clave)
                                      ? Colors.green:Colors.red),)
                                :const Text(''),
                              !viewCheck
                                ?
                                  Text(dataModel.alternativas[dataModel.clave].toString(),
                                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
                                    color: (selectedValue == dataModel.clave)
                                      ? Colors.green:Colors.red),)
                                :const Text(''),
                            ]
                          ),
                        ],
                      ),
                    Column(
                      children: [
                        Row(
                          children: const [SizedBox(height: 20)],
                        ),
                        ElevatedButton(
                          onPressed: () async {
                            bool isCorrect = selectedValue == dataModel.clave;
                            if(viewCheck&&selectedValue!=null)
                            {
                              isCorrect
                                ?  await sonidoBien.play(AssetSource(pathSonidoBien))
                                :  await sonidoMal.play(AssetSource(pathSonidoMal));
                            } 
                            setState(() {
                              if(viewCheck && selectedValue!=null){ 
                                //Si el botón dice 'COMPROBAR' 
                                // y a menos una opción está marcada
                                isCorrect
                                  ? selectImage = 1
                                  : selectImage = 2;                
                                isRadioTileDisabled = true;
                                viewCheck=false;
                              }else if(!viewCheck){
                                //Si el botón dice 'VER SOLUCION'
                                goToSolution(context); 
                              }
                            });
                          },
                          style:ElevatedButton.styleFrom(
                            backgroundColor: Colors.teal[400],
                            padding: const EdgeInsets.fromLTRB(40.0,15.0,40.0,15.0),
                            shape:RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            elevation: 10,
                            shadowColor: Colors.black,
                            fixedSize: const Size(230, 50),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(Icons.visibility),
                              const SizedBox(width: 8.0),
                              Text( viewCheck? localizations.check:localizations.solution
                                , style: const TextStyle(fontSize: 15, fontFamily:'Roboto',),)
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(                          
                          onPressed: () {
                            setState(() {
                              checkInternetConnectivity(dataModel);
                              dataModel.connected
                                ? (){
                                  createProblem(dataModel, localizations);
                                  selectedValue = null;
                                  viewCheck = true;
                                  selectImage = 0;
                                  areKeys = [false,false,false,false];
                                  }()
                                : disconnected(context, localizations);
                              isRadioTileDisabled = false;
                            });
                          },
                          style:ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue[600],
                            padding: const EdgeInsets.fromLTRB(40.0,15.0,40.0,15.0),
                            shape:RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            elevation: 10,
                            shadowColor: Colors.black,
                            fixedSize: const Size(230, 50),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(Icons.refresh),
                              const SizedBox(width: 8.0),
                              Text(localizations.newProblem, style: const TextStyle(fontSize: 15, fontFamily:'Roboto',),)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
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
              persistentFooterButtons: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 75,
                  alignment: Alignment.center,
                  child: dataModel.isBannerAdProblemReady
                    ? AdWidget(ad: dataModel.bannerAdProblem)
                    : const CircularProgressIndicator(),
                ),
              ],
            ),
          ),
        );
      }
}
