import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:raz_mat/viewmodels/change_page.dart';
import 'package:raz_mat/viewmodels/constants.dart';
import 'package:raz_mat/view/widgets.dart';
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

  Stream<int> timerStream(int seconds) {
    return Stream.periodic(Duration(seconds: seconds), (i) => i);
  }

  void loadBannerAdProblem(DataModel dataModel) async {
    await dataModel.bannerAdProblem.load();
    setState(() {
      dataModel.isBannerAdProblemReady = true;
    });
  }
  
  void loadBannerAdSolution(DataModel dataModel) async {
    await dataModel.bannerAdSolution.load();
    setState(() {
      dataModel.isBannerAdSolutionReady = true;
    });
  }
  
  void loadBannerAdTheory(DataModel dataModel) async {
    await dataModel.bannerAdTheory.load();
    setState(() {
      dataModel.isBannerAdTheoryReady = true;
    });
  }
  
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
      DataModel dataModel = Provider.of<DataModel>(context, listen: false);
      int width = MediaQuery.of(context).size.width.toInt();
      
      dataModel.bannerAdProblem = BannerAd(
        adUnitId: adUnitBannerId,
        size: AdSize(width: width, height: 45),
        request: const AdRequest(),
        listener: BannerAdListener(
          onAdLoaded: (_) {
            setState(() {
              dataModel.isBannerAdProblemReady = true;
            });
          },
          onAdFailedToLoad: (ad, error) {
            timerStream(10).take(1).listen((_) => loadBannerAdProblem(dataModel));
          },
        ),
      );
      dataModel.bannerAdProblem.load();

      dataModel.bannerAdSolution = BannerAd(
        adUnitId: adUnitBannerId,
        size: AdSize(width: width, height: 45),
        request: const AdRequest(),
        listener: BannerAdListener(
          onAdLoaded: (_) {
            setState(() {
              dataModel.isBannerAdSolutionReady = true;
            });
          },
          onAdFailedToLoad: (ad, error) {
            timerStream(10).take(1).listen((_) => loadBannerAdSolution(dataModel));
          },
        ),
      );
      dataModel.bannerAdSolution.load();

      dataModel.bannerAdTheory = BannerAd(
        adUnitId: adUnitBannerId,
        size: AdSize(width: width, height: 45),
        request: const AdRequest(),
        listener: BannerAdListener(
          onAdLoaded: (_) {
            setState(() {
              dataModel.isBannerAdTheoryReady = true;
            });
          },
          onAdFailedToLoad: (ad, error) {
            timerStream(10).take(1).listen((_) => loadBannerAdTheory(dataModel));
          },
        ),
      );
      dataModel.bannerAdTheory.load();  

    });
  }

  @override
  Widget build(BuildContext context) {
    MyAppLocalizations localizations = MyAppLocalizations.of(context);
    DataModel dataModel = Provider.of<DataModel>(context, listen: false);
    checkInternetConnectivity(dataModel);
    return dataModel.isBannerAdProblemReady && 
           dataModel.isBannerAdSolutionReady &&
           dataModel.isBannerAdTheoryReady
      ? Scaffold(
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
                        getItem(context, dataModel, localizations,
                          iconosItems[0],
                          localizations.topic1,
                          opcion:1),
                        const SizedBox(height: 15),
                        getItem(context, dataModel, localizations, 
                          iconosItems[1],
                          localizations.topic2,
                          opcion:2),
                        const SizedBox(height: 15),
                        getItem(context, dataModel, localizations, 
                          iconosItems[2],
                          localizations.topic3,
                          opcion:3),
                        const SizedBox(height: 15),
                        getItem(context, dataModel, localizations, 
                          iconosItems[3],
                          localizations.topic4,
                          opcion:4),
                        const SizedBox(height: 15),
                        getItem(context, dataModel, localizations, 
                          iconosItems[4],
                          localizations.topic5,
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
        )
      : Container(
          color: Colors.white,
          child: Image.asset(
            pathIcon,
            fit: BoxFit.contain,
          ),
        );
  }
}
