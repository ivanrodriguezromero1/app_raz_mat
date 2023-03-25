import 'package:flutter/material.dart';
import 'package:raz_mat/viewmodels/change_page.dart';
import 'package:raz_mat/viewmodels/providers.dart';
import '../viewmodels/my_app_localizations.dart';

Container getItem(BuildContext context,
                  DataModel dataModel,
                  MyAppLocalizations localizations,
                  IconData iconData,
                  String topic,
                  {int opcion = 1}){
  return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.yellow.shade700,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                    leading: Icon(iconData, color: Colors.yellow.shade800,),
                    title: Text(topic,
                      style: TextStyle(fontSize: 20, color: Colors.grey.shade700),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.orange.shade300,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: IconButton(
                            icon: Icon(Icons.menu_book, color: Colors.orange.shade600),
                            onPressed: () {
                              dataModel.option = opcion;
                              goToTheory(context, dataModel, localizations);
                            },
                          ),
                        ),
                        const SizedBox(width: 8.0),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.orange.shade300,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: IconButton(
                            icon: Icon(Icons.edit, color: Colors.orange.shade600),
                            onPressed: () {
                              dataModel.option = opcion;
                              goToProblems(context, dataModel, localizations);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                );
}

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> disconnected(BuildContext context, 
                                                                       MyAppLocalizations localizations){
  return ScaffoldMessenger.of(context).showSnackBar(
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
}
AlertDialog showTip(BuildContext context, DataModel dataModel, MyAppLocalizations localizations){
  return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          backgroundColor: Colors.cyan[50],
          title: Text(localizations.tip,
            textAlign: TextAlign.center,),
          content: SingleChildScrollView(
            child: Column(
              children: [
                Text(getTipByOptionAndType(dataModel, localizations)),
              ],
            ),
          ),
          actions: <Widget>[
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: <Widget>[
                TextButton(                  
                  onPressed: () {
                    // Cerrar el diálogo
                    Navigator.of(context).pop();
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14.0),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8.0,2.0,8.0,2.0),
                    child: Text(
                      localizations.close,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
}