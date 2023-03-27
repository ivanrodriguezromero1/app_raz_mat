import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';
import '../viewmodels/change_page.dart';
import '../viewmodels/my_app_localizations.dart';
import '../viewmodels/constants.dart';
import '../viewmodels/providers.dart';

class TheoryScreen extends StatefulWidget {
   const TheoryScreen({Key? key}) : super(key: key);
  @override
  TheoryScreenState createState() => TheoryScreenState(); 
}
class TheoryScreenState extends State<TheoryScreen> {
  int? selectedValue;
  int selectImage = 0;
  bool isRadioTileDisabled = false;
  bool viewCheck = true;
  
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
          home: 
            Scaffold(
              appBar: AppBar(
               iconTheme: const IconThemeData(
                  color: Colors.white, // Cambia el color de la flecha de ir atrás a blanco
                ),
              title: 
                Row(
                  children:[
                    Icon(iconosItems[dataModel.option-1]),
                    const SizedBox(width: 8,),
                    Text(title, 
                    style: const TextStyle(color: Colors.white),),                    
                  ]
                ),
              flexibleSpace: Image.asset(pathBar,
                  fit: BoxFit.cover,),
            ),
            body: SingleChildScrollView(child:ConstrainedBox(
                      constraints: BoxConstraints(
                        minHeight: MediaQuery.of(context).size.height,
                      ),
                  child: 
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          color: Colors.white,
                          padding:const EdgeInsets.fromLTRB(35,20,26,18),
                          child: Text(dataModel.teoria,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 17,
                              fontStyle: FontStyle.italic,
                              color: Colors.grey.shade900),
                          ),
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
                  height: 80,
                  alignment: Alignment.center,
                  child:dataModel.isBannerAdTheoryReady
                    ? AdWidget(ad: dataModel.bannerAdTheory)
                    : const CircularProgressIndicator(),
                ),
              ],
          ),
        ),
      );
      }
}
