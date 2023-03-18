import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';
import '../viewmodels/change_page.dart';
import '../viewmodels/my_app_localizations.dart';
import '../viewmodels/constants.dart';
import '../viewmodels/providers.dart';

class SolutionsScreen extends StatefulWidget {
   const SolutionsScreen({Key? key}) : super(key: key);
  @override
  SolutionsScreenState createState() => SolutionsScreenState(); 
}
class SolutionsScreenState extends State<SolutionsScreen> {
  int? selectedValue;
  int selectImage = 0;
  bool isRadioTileDisabled = false;
  bool viewCheck = true;

  @override
  Widget build(BuildContext context) {
    MyAppLocalizations localizations = MyAppLocalizations.of(context);
    DataModel dataModel = Provider.of<DataModel>(context, listen: false);
    checkInternetConnectivity(dataModel);
    return ChangeNotifierProvider(
      create: (context) => dataModel,
      child:
          Scaffold(
            appBar: AppBar(
               iconTheme: const IconThemeData(
                  color: Colors.white, // Cambia el color de la flecha de ir atrás a blanco
                ),
              title: Text(localizations.titleSolution, 
                style: const TextStyle(color: Colors.white),),
                flexibleSpace: Image.asset(pathBar,
                  fit: BoxFit.cover,),
            ),
            body:   Container(
                    color: Colors.blueGrey.shade400,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child:SingleChildScrollView(
                  child: 
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding:const EdgeInsets.fromLTRB(35,20,26,18),
                          child: Text(dataModel.solucion,
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white),
                          ),
                        ),                      
                      ],
                    ),
                  )
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
                  height: 80,
                  alignment: Alignment.center,
                  child:dataModel.isBannerAdSolutionReady
                    ? AdWidget(ad: dataModel.bannerAdSolution)
                    : const CircularProgressIndicator(),
                ),
              ],
          ),
        );
      }
}
