import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';
import 'package:raz_mat/viewmodels/createProblemSeries.dart';
import 'package:raz_mat/models/problema.dart';
import '../models/tipo.dart';
import '../viewmodels/change_page.dart';
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
  late BannerAd _bannerAd;
  bool _isBannerAdReady = false;
  
  String message = '';
  @override
  void initState() {
    super.initState();
    createBannerAd();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      for (String path in imageList) {
        precacheImage(AssetImage(path), context);
      }
    });
  }
  void createBannerAd() async{    
    WidgetsBinding.instance.addPostFrameCallback((_) {
      int width = MediaQuery.of(context).size.width.toInt();  
      _bannerAd = BannerAd(
        adUnitId: 'ca-app-pub-3940256099942544/6300978111',
        size: AdSize(width: width, height: 45),
        request: const AdRequest(),
        listener: BannerAdListener(
          onAdLoaded: (_) {
            setState(() {
              _isBannerAdReady = true;
            });
          },
          onAdFailedToLoad: (ad, error) {
            ad.dispose();
          },
        ),
      );
      _bannerAd.load();
    });
  }
  @override
  void dispose() {
    _bannerAd.dispose();
    super.dispose();
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
                        padding:const EdgeInsets.fromLTRB(26,20,26,18),
                        child: Text(dataModel.enunciado,
                          style: const TextStyle(
                            fontSize: 20,),
                          ),
                        ),
                       Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Column(
                              children: dataModel.alternativas.map((alternativa) {
                                int i =  dataModel.alternativas.indexOf(alternativa);
                                String literal = literales[i];
                                return RadioListTile<int?>(
                                  title: Text(
                                    '$literal) $alternativa',
                                    style: const TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                  value: i,
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
                          children: const [SizedBox(height: 32)],
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if(viewCheck && selectedValue!=null){ 
                                //Si el botón dice 'COMPROBAR' 
                                // y a menos una opción está marcada
                                selectedValue == dataModel.clave
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
                        const SizedBox(height: 30),
                        ElevatedButton(                          
                          onPressed: () {
                            setState(() {
                              checkInternetConnectivity(dataModel);
                              dataModel.connected?(){
                              Tipo series = getTipo(localizations);
                              Problema p = createProblemSeries(series, dataModel.difficulty);
                              dataModel.enunciado = p.enunciado;
                              dataModel.alternativas = p.alternativas;
                              dataModel.clave = p.clave;
                              dataModel.solucion = p.solucion;
                              selectedValue = null;
                              viewCheck = true;
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
                  height: 90,
                  alignment: Alignment.center,
                  child:_isBannerAdReady
                    ? AdWidget(ad: _bannerAd)
                    : const CircularProgressIndicator(),
                ),
              ],
            ),
          ),
        );
      }
}