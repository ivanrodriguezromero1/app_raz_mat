import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/viewmodels/change_page.dart';
import '/viewmodels/my_words.dart';
import '/viewmodels/constants.dart';
import '/viewmodels/providers.dart';

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
    MyWords myWords = MyWords();
    DataModel dataModel = Provider.of<DataModel>(context, listen: false);
    return ChangeNotifierProvider(
      create: (context) => dataModel,
      child:
          Scaffold(
            appBar: AppBar(
               iconTheme: const IconThemeData(
                  color: Colors.white, // Cambia el color de la flecha de ir atrás a blanco
                ),
              title: 
                Row(
                  children:[
                    const Icon(Icons.done_all),
                    const SizedBox(width: 8,),
                    Text(myWords.titleSolution, 
                    style: const TextStyle(color: Colors.white),),                    
                  ]
                ),
              flexibleSpace: Image.asset(pathBar,
                  fit: BoxFit.cover,),
            ),
            body:   Container(
                    color: Colors.cyan.shade50,
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
                              fontSize: 17,
                              fontStyle: FontStyle.italic,
                              color: Colors.grey.shade900),
                          ),
                        ),
                        const SizedBox(height: 5,),
                        Center(
                          child: 
                           Text('∴  ${dataModel.alternativas[dataModel.clave]}',
                            style: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              color: Colors.black),
                          ),
                        )
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
                          icon: const Icon(Icons.arrow_back,color: Colors.white),
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
          ),
        );
      }
}
